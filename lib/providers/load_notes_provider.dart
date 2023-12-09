import 'package:hive/hive.dart';
import '../model/note_model.dart';
import 'package:flutter/material.dart';

class LoadNotesProvider extends ChangeNotifier {
  List<NoteModel> notes = [];

  void loadNotes() {
    var noteBox = Hive.box<NoteModel>('notes_box');
    notes = noteBox.values.toList();
    notifyListeners();
  }
}
