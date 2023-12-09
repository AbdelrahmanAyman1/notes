import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/model/note_model.dart';

class AddNoteProvider extends ChangeNotifier {
  Future<void> addNote(NoteModel note) async {
    try {
      var noteBox = Hive.box<NoteModel>('notes_box');
      await noteBox.add(note);
      notifyListeners(); // Notify listeners after updating the Hive box
    } catch (e) {
      // TODO: Handle the error
    }
  }
}