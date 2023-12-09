import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      this.maxLines = 1,
      this.onSaved,
      this.errorMessage});

  final String label;
  final int maxLines;
  final String? errorMessage;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return errorMessage;
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)))),
    );
  }
}
