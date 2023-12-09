import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/model/note_model.dart';

class AddNoteProvider extends ChangeNotifier {
  Future<void> addNote(NoteModel note) async {
    try {
      var noteBox = Hive.box<NoteModel>('notes_box');
      notifyListeners();
      await noteBox.add(note);
      notifyListeners();
    } catch (e) {
      // TODO
    }
  }
}
