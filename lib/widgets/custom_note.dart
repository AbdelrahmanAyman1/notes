import 'package:flutter/material.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/views/edit_note_veiw.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: Text(
                    note.title,
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                subtitle: Text(
                  note.content,
                  style: const TextStyle(color: Colors.grey, fontSize: 20),
                ),
                trailing: InkWell(
                  onTap: () {
                    note.delete();
                  },
                  child: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date.substring(0, 10),
                  style: TextStyle(color: Colors.black.withOpacity(.5)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
