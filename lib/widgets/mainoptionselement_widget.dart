import 'package:flutter/material.dart';

class MainOptionsElement extends StatelessWidget {
  final double height;
  final double width;
  final String? imagelink;
  final String title;
  final Color color;
  final Function func;
  const MainOptionsElement(
      {required this.height, required this.width, required this.title, required this.func, this.imagelink, this.color = Colors.grey, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => func,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
          image: imagelink != null ? DecorationImage(image: AssetImage(imagelink!), fit: BoxFit.fitHeight) : null,
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 13,
              left: 11,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
