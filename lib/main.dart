import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prayer_hub/bottom_navigation.dart';
import 'package:prayer_hub/pages/chat_page.dart';
import 'package:prayer_hub/pages/home_page.dart';
import 'package:prayer_hub/pages/login_page.dart';
import 'package:prayer_hub/pages/profile_page.dart';
import 'package:prayer_hub/pages/signu_page.dart';
import 'package:prayer_hub/pages/video_call_page.dart';
import 'package:prayer_hub/pages/video_calling_page.dart';
import 'package:prayer_hub/pages/voice_call_page.dart';
import 'package:prayer_hub/pages/voice_calling_page.dart';
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
      routes: {
        Nav.id: (context) => Nav(),
        LoginPage.id: (context) => LoginPage(),
        SignupPage.id: (context) => SignupPage(),
        HomePage.id: (context) => HomePage(),
        ProfilePage.id: (context) => ProfilePage(),
        ChatPage.id: (context) => ChatPage(),
        VideoCallingPage.id: (context) => VideoCallingPage(),
        VideoCallPage.id: (context) => VideoCallPage(),
        VoiceCallingPage.id: (context) => VoiceCallingPage(),
        VoiceCallPage.id: (context) => VoiceCallPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorPrimary,
      body: LoginPage(),
    );
  }
}
