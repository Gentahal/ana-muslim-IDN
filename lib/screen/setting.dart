import 'package:ana_muslim/main.dart';
import 'package:ana_muslim/models/Content.dart';
import 'package:ana_muslim/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

void main() {
  runApp(SettingScreen());
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xFF5CD8FF),
      debugShowCheckedModeBanner: false,
      title: 'Setting',
      home: _Setting(
        title: 'Setting',
      ),
    );
  }
}

class _Setting extends StatefulWidget {
  const _Setting({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  __SettingState createState() => __SettingState();
}

class __SettingState extends State<_Setting> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5CD8FF),
        title: Text(widget.title),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
              title: Text(
                'Opsi 1',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.language),
                  title: Text('Bahasa'),
                  value: Text('Indonesia'),
                ),
                SettingsTile.switchTile(
                  initialValue: true,
                  title: Text('Pilih mode disini'),
                  leading: Icon(Icons.format_paint),
                  onToggle: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                )
              ])
        ],
      ),
    );
  }
}
