import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF5CD8FF),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0))),
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/small/avatar/dos:41ab868251f39aceef211ffdc2a32a3420211207073002.png',
                            ),
                            radius: 50.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Genta Halilintar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            'gentahalilintar36@gmail.com',
                            style:
                                TextStyle(color: Colors.black45, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bio:',
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Halo nama saya Genta Halilintar saya siswa di IDN Boarding School',
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF5CD8FF),
                        letterSpacing: 2.0),
                  )
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 20.0,
          // ),
          // ElevatedButton(onPressed: (){launceMap();},
          // child: Text('Cek Saya'),),
          // Container(
          //   width: 300.0,
          //   child: RaisedButton(
          //     onPressed: (){},
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20.0),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
