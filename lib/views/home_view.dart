import 'package:flutter/material.dart';

import '../widgets/custom_note.dart';
import '../widgets/custom_text_field.dart';

class HomeView extends StatelessWidget {
  static String routeName = 'home';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: CustomNote(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            openBottomSheet(context);
          },
          shape: const CircleBorder(eccentricity: 1),
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add)),
    );
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 50),
          child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextField(label: 'title'),
                  const SizedBox(height: 16),
                  const CustomTextField(label: 'content', maxLines: 5),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        foregroundColor: Colors.black),
                    child: const Text('Add'),
                  )
                ],
              )),
        );
      },
    );
  }
}
