import 'package:flutter/material.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/providers/load_notes_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  static String routeName = 'editView';

  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as NoteModel;
    var provider = Provider.of<LoadNotesProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Edit Note',
            style: TextStyle(fontSize: 24),
          ),
          actions: [
            IconButton(
              onPressed: () {
                args.save();
                Navigator.pop(context);
                provider.loadNotes();
              },
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            CustomTextField(
              label: args.title,
              onChanged: (value) {
                args.title = value;
              },
            ),
            const SizedBox(height: 16),
            CustomTextField(
              label: args.content,
              maxLines: 5,
              onChanged: (value) {
                args.content = value;
              },
            ),
          ]),
        ));
  }
}
