import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;

class TensorFlowService {
  Interpreter? _interpreter;
  List<String>? _labels;

  static const String _modelPath = 'assets/models/model.tflite';
  static const String _labelsPath = 'assets/models/labels.txt';

  Future<void> loadModel() async {
    try {
      _interpreter = await Interpreter.fromAsset(_modelPath);
      debugPrint('Model loaded successfully');
      await _loadLabels();
    } catch (e) {
      debugPrint('Error loading model: $e');
    }
  }

  Future<void> _loadLabels() async {
    try {
      final labelData = await rootBundle.loadString(_labelsPath);
      _labels = labelData.split('\n').where((s) => s.isNotEmpty).toList();
      debugPrint('Labels loaded: $_labels');
    } catch (e) {
      debugPrint('Error loading labels: $e');
    }
  }

  Future<Map<String, dynamic>> runInference(File imageFile) async {
    if (_interpreter == null) {
      await loadModel();
    }

    if (_interpreter == null) {
      throw Exception('Interpreter not initialized');
    }

    if (_labels == null || _labels!.isEmpty) {
      await _loadLabels();
      if (_labels == null || _labels!.isEmpty) {
        throw Exception('Labels not loaded');
      }
    }

    const int inputSize = 224;
    final imageData = await imageFile.readAsBytes();
    final image = img.decodeImage(imageData);

    if (image == null) {
      throw Exception('Failed to decode image');
    }

    final resizedImage = img.copyResize(
      image,
      width: inputSize,
      height: inputSize,
    );

    var input = Float32List(1 * inputSize * inputSize * 3);
    var buffer = Float32List.view(input.buffer);
    int pixelIndex = 0;
    for (var y = 0; y < inputSize; y++) {
      for (var x = 0; x < inputSize; x++) {
        final pixel = resizedImage.getPixel(x, y);
        buffer[pixelIndex++] = pixel.r / 255.0;
        buffer[pixelIndex++] = pixel.g / 255.0;
        buffer[pixelIndex++] = pixel.b / 255.0;
      }
    }

    final inputTensor = input.reshape([1, inputSize, inputSize, 3]);

    final outputShape = _interpreter!.getOutputTensor(0).shape;

    final numClasses = outputShape[1];

    var output = List.filled(numClasses, 0.0).reshape([1, numClasses]);

    _interpreter!.run(inputTensor, output);

    final result = output[0] as List<double>;

    double maxScore = -1.0;
    int maxIndex = -1;

    for (int i = 0; i < result.length; i++) {
      if (result[i] > maxScore) {
        maxScore = result[i];
        maxIndex = i;
      }
    }

    String label = 'Unknown';
    if (maxIndex != -1 && maxIndex < _labels!.length) {
      label = _labels![maxIndex];
    }

    return {
      'label': label,
      'confidence': maxScore,
      'recommendations': _getRecommendations(label),
    };
  }

  List<String> _getRecommendations(String label) {
    final Map<String, List<String>> recommendationsMap = {
      'InValid tomato': [
        'تم الكشف عن: فيروس تجعد أوراق الطماطم الصفراء',
        'استخدم شتلات خالية من الفيروسات',
        'كافح الذباب الأبيض (الناقل) بالمبيدات الحشرية أو الشباك',
        'قم بإزالة وتدمير النباتات المصابة على الفور',
        'حافظ على الحقل خاليًا من الأعشاب الضارة',
      ],
      'Valid': [
        'النبات يبدو بصحة جيدة!',
        'استمر في المراقبة المنتظمة',
        'حافظ على الري والتسميد المستمر',
      ],
    };

    return recommendationsMap[label] ??
        [
          'استشر خبيرًا للحصول على نصيحة مفصلة',
          'اعزل النبات لمنع الانتشار',
          'تحقق من وجود آفات وأعراض أخرى',
        ];
  }

  void close() {
    _interpreter?.close();
  }
}
