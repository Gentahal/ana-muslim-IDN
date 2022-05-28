import 'package:flutter/material.dart';

class ContentApp extends StatelessWidget {
  const ContentApp({
    Key? key,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final Color bgColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(16.0 / 2),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Image.asset(
                image,
                height: 132,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}