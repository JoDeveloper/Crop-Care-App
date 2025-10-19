import 'package:flutter/material.dart';

class CustomCaptureContainer extends StatelessWidget {
  const CustomCaptureContainer({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.color1,
    required this.color2,
    required this.onTap,
  });
  final String title;
  final String subTitle;
  final IconData icon;
  final Color color1;
  final Color color2;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [color1, color2]),
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white24,
                ),
                child: Icon(icon, color: Colors.white, size: 30),
              ),

              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
