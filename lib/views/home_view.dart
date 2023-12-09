import 'package:flutter/material.dart';
import 'package:notes/providers/load_notes_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/bottom_sheet.dart';
import '../widgets/custom_note.dart';

class HomeView extends StatelessWidget {
  static String routeName = 'home';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var loadNotesProvider = Provider.of<LoadNotesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
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
          body: ListView.builder(
            itemCount: loadNotesProvider.notes.length,
        itemBuilder: (context, index) {
          var note = loadNotesProvider.notes[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomNote(note: note),
          );
        },
      ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
              context: context,
              builder: (context) {
                return const BottomSheetContent();
              },
            );
          },
          shape: const CircleBorder(eccentricity: 1),
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add)),
    );
  }
}
