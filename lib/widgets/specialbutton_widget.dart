import 'package:flutter/material.dart';

class SpecialButton extends StatelessWidget {
  final String title;
  final Color color;
  final double width;
  final double height;
  final Function function;
  const SpecialButton({required this.title, required this.function, this.color = const Color(0xFF0065F6), this.width = 276, this.height = 48, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => function(),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: color == Colors.white ? Colors.black  : Colors.white),
          ),
        ),
      ),
    );
  }
}
