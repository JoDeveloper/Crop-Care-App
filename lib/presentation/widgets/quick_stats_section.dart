
import 'package:flutter/material.dart';

class QuickStatsSection extends StatelessWidget {
  const QuickStatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(193, 237, 245, 235),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Stats',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
    
              Column(
                children: [
                  Text(
                    '145',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Crops Analyzed',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 102, 102, 102),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '95%',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Accuracy Rate',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 102, 102, 102),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
