import 'package:flutter/material.dart';

import '../widgets/custom_note.dart';

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
          onPressed: () {},
          shape: const CircleBorder(eccentricity: 1),
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add)),
    );
  }
}
