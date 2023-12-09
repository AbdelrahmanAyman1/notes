import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  static String routeName = 'editView';

  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Edit Note',
            style: TextStyle(fontSize: 24),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.check,
                size: 24,
              ),
              style: IconButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(.05),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(12)),
              ),
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            CustomTextField(label: 'title'),
            SizedBox(height: 16),
            CustomTextField(label: 'content', maxLines: 5),
          ]),
        ));
  }
}
