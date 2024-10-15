import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final double height;
  final bool isAlive;
  final bool isGrey;
  final List<Widget> children;
  final bool isBig;
  const InfoCard({required this.height, required this.isAlive, required this.children, this.isBig = false, this.isGrey = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: isGrey
            ? null
            : isAlive
                ? const DecorationImage(image: AssetImage("assets/cardblue.png"), fit: BoxFit.fitHeight)
                : const DecorationImage(image: AssetImage("assets/cardred.png"), fit: BoxFit.fitHeight),
        color: isGrey ? const Color(0xFFB8B8B8) : null
      ),
      child: Stack(
        children: children,
      ),
    );
  }
}
