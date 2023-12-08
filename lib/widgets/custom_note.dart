import 'package:flutter/material.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            const ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 14.0),
                child: Text(
                  'flutter Notes',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              subtitle: Text(
                'abdelrahman first Notes on this app',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              trailing: Icon(
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                '12/10/2023',
                style: TextStyle(color: Colors.black.withOpacity(.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
