import 'package:ana_muslim/models/Content.dart';
import 'package:ana_muslim/screen/components/content_app.dart';
import 'package:ana_muslim/screen/components/section_title.dart';
import 'package:ana_muslim/screen/detail.dart';
import 'package:ana_muslim/screen/home.dart';
import 'package:flutter/material.dart';

class IlmuSunnah extends StatelessWidget {
  IlmuSunnah({
    Key? key,
  }) : super(key: key);

  final ilmuSunnah =
      demo_content.where((content) => content.type == 'Kenal Islam').toList(); //buat filter typenya

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        section_title(
          title: 'Kenal Islam',
          pressSemua: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              ilmuSunnah.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ContentApp(
                  content: ilmuSunnah[index],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
