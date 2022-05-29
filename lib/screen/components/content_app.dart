import 'package:ana_muslim/models/Content.dart';
import 'package:ana_muslim/screen/detail.dart';
import 'package:flutter/material.dart';

class ContentApp extends StatelessWidget {
  const ContentApp({
    Key? key, required this.content,
  }) : super(key: key);

  final Content content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('item: ' + content.image);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              content: content,
            ),
          ),
        );
      },
      child: Container(
        width: 154,
        padding: EdgeInsets.all(16.0 / 2),
        decoration: BoxDecoration(
            color: content.bgColor,
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Hero(
                tag: content.image,
                child: Image.asset(
                  content.image,
                  height: 132,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              content.title,
              style: const TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
