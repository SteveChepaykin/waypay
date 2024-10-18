import 'package:flutter/material.dart';

class ContractsFilterTextField extends StatefulWidget {
  final TextEditingController controller;
  const ContractsFilterTextField({required this.controller, super.key});

  @override
  State<ContractsFilterTextField> createState() => _ContractsFilterTextFieldState();
}

class _ContractsFilterTextFieldState extends State<ContractsFilterTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: const Color(0xFFB8B8B8))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: widget.controller,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 24,
            ),
            suffixIcon: ImageIcon(
              AssetImage("assets/settings.png"),
            ),
            border: InputBorder.none,
            labelStyle: TextStyle(color: Colors.black),
            contentPadding: EdgeInsets.all(0),
          ),
        ),
      ),
    );
  }
}
