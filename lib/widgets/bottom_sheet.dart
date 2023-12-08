import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          const EdgeInsetsDirectional.symmetric(vertical: 50, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomTextField(label: 'title'),
          const SizedBox(height: 16),
          const CustomTextField(label: 'content', maxLines: 5),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.black),
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}
