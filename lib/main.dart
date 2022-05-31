import 'package:ana_muslim/screen/history.dart';
import 'package:ana_muslim/screen/home.dart';
import 'package:ana_muslim/screen/setting.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Muslim UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.blueAccent,
        primarySwatch: Colors.blue,
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFFBFBFD),
      ),
      home: BodyNav(),
    );
  }
}

class BodyNav extends StatefulWidget {
  const BodyNav({ Key? key }) : super(key: key);

  @override
  _BodyNavState createState() => _BodyNavState();
}

class _BodyNavState extends State<BodyNav> {
  int _selectedCurrent = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedCurrent = index;
    });
  }

  final List<Widget> _allContent = [HomeScreen(),BookmarkScreen(onTap: () {  },),SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _allContent.elementAt(_selectedCurrent),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedCurrent,
        selectedItemColor: Color(0xFF5CD8FF),
        onTap: _changeSelectedNavBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              title: Text('home')),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 30.0,
            ),
            title: Text('bookmark'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30.0,
            ),
            title: Text('setting'),
          ),
        ],
        showUnselectedLabels: false,
      ),
    );
  }
}
