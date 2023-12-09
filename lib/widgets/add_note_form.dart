import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/providers/add_note_provider.dart';
import 'package:notes/providers/load_notes_provider.dart';
import 'package:provider/provider.dart';

import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> fomKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    var addNoteProvider = Provider.of<AddNoteProvider>(context);
    var loadNoteProvider = Provider.of<LoadNotesProvider>(context);
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
                var noteModel = NoteModel(
                    title: title!,
                    content: content!,
                    date: DateTime.now().toString(),
                    color: Colors.lightBlueAccent.value);
                addNoteProvider.addNote(noteModel);
                Navigator.pop(context);
                loadNoteProvider.loadNotes();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.black),
            child: const Text('Add'),
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
