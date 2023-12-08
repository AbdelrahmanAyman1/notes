import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, this.maxLines = 1});

  final String label;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)))),
    );
  }
}
