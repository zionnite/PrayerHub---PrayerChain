import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prayer_hub/pages/login_page.dart';
import 'package:prayer_hub/util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorPrimary,
      body: SingleChildScrollView(
          child: Center(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage("assets/images/prayer.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ClipRRect(
                // make sure we apply clip it properly
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.grey.withOpacity(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          color: Colors.black12,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: textColorWhite,
                                fontSize: 23.0,
                                fontFamily: 'NerkoOne',
                              ),
                            ),
                          ),
                        ),
                        RaisedButton(
                          color: textColorWhite,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: textColorWhite,
                                fontSize: 23.0,
                                fontFamily: 'NerkoOne',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

//
// Positioned(
// bottom: 345.0,
// left: 155.0,
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// RaisedButton(
// color: textColorWhite,
// child: Text(
// 'Login',
// style: TextStyle(
// color: textColorWhite,
// fontSize: 23.0,
// ),
// ),
// ),
// RaisedButton(
// color: textColorWhite,
// child: Text(
// 'Register',
// style: TextStyle(
// color: textColorWhite,
// fontSize: 23.0,
// ),
// ),
// ),
// ],
// ),
// ),
