import 'package:flutter/material.dart';
import 'package:notes/providers/add_note_provider.dart';
import 'package:provider/provider.dart';

import 'add_note_form.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddNoteProvider(),
      child: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(
            top: 50,
            start: 12,
            end: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: const AddNoteForm(),
      ),
    );
  }
}
