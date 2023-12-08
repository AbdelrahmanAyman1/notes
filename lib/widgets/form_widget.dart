import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    super.key,
  });

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> fomKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fomKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextField(
            label: 'title',
            errorMessage: 'please enter title',
            onSaved: (vale) {
              title = vale;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'content',
            errorMessage: 'please enter content',
            maxLines: 5,
            onSaved: (vale) {
              content = vale;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (fomKey.currentState!.validate()) {
                fomKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
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
