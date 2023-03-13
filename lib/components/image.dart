import 'package:flutter/material.dart';

class TextImage extends StatelessWidget {
  final String text;
  final  image;
  final func;
  const TextImage({super.key, required this.text, required this.image, required this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: func,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://eu.ui-avatars.com/api/?name=S+S'),
              ),
            )
          ],
        ));
  }
}
