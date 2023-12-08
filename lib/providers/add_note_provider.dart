import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/model/note_model.dart';

class AddNoteProvider extends ChangeNotifier {
  addNote(NoteModel note) async {
    try {
      var noteBox = Hive.box<NoteModel>('notes_box');
      await noteBox.add(note);
      notifyListeners();
    } catch (e) {
      // TODO
    }
  }
}
