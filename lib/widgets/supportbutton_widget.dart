import 'package:flutter/material.dart';

class SupportButton extends StatelessWidget {
  const SupportButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
            image: const DecorationImage(image: AssetImage("assets/supprt_plane.png"))
          ),
        ),
        const SizedBox(height: 2),
        const Text("Поддержка", style: TextStyle(fontSize: 11, color: Color(0xFFB8B8B8)),),
      ],
    );
  }
}