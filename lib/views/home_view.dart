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
      body: const CustomNote(),
    );
  }
}
