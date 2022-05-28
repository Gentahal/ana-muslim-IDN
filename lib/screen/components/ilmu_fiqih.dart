import 'package:ana_muslim/models/Content.dart';
import 'package:ana_muslim/models/Fiqih.dart';
import 'package:ana_muslim/screen/components/content_app.dart';
import 'package:ana_muslim/screen/components/section_title.dart';
import 'package:ana_muslim/screen/detail.dart';
import 'package:flutter/material.dart';

class IlmuFiqih extends StatelessWidget {
  IlmuFiqih({
    Key? key,
  }) : super(key: key);

  final ilmuFikih = demo_content.where((content) => content.type == 'Fikih').toList();

  @override
  Widget build(BuildContext context) {
  
    return Column(
      children: [
        section_title(
          title: 'Ilmu Fiqih',
          pressSemua: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              ilmuFikih.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ContentApp(
                  image: ilmuFikih[index].image,
                  title: ilmuFikih[index].title,
                  bgColor: ilmuFikih[index].bgColor,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen(content: ilmuFikih[index],)),
                    );
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}


