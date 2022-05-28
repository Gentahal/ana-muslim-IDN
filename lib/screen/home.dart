import 'package:ana_muslim/models/Content.dart';
import 'package:ana_muslim/models/Fiqih.dart';
import 'package:ana_muslim/screen/components/ilmu_fiqih.dart';
import 'package:ana_muslim/screen/components/ilmu_sunnah.dart';
import 'package:ana_muslim/screen/components/search.dart';
import 'package:ana_muslim/screen/profile.dart';
import 'package:ana_muslim/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/section_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          icon: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:41ab868251f39aceef211ffdc2a32a3420211207073002.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Assalamualaikum👋🏻',
              style: TextStyle(
                  fontSize: 20, color: Colors.black, fontFamily: 'Poppins'),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/notification (1).svg'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      child: Image.asset(
                        'assets/images/logo.jpg',
                        width: 125,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ana Muslim',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                        ),
                        const Text(
                          'Mengenal islam lebih dekat',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              NewWidget(),
              IlmuSunnah(),
              SizedBox(
                height: 16,
              ),
              IlmuFiqih(),
              SizedBox(
                height: 13.0,
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}

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
