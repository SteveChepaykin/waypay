import 'package:flutter/material.dart';

class FilterTextField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  const FilterTextField({required this.controller, required this.label, super.key});

  @override
  State<FilterTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<FilterTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFB8B8B8))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.search, size: 24,),
            border: InputBorder.none,
            labelText: widget.label,
            labelStyle: const TextStyle(color: Colors.black),
            contentPadding: const EdgeInsets.all(0),
          ),
        ),
      ),
    );
  }
}