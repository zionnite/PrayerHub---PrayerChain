import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prayer_hub/bloc/app_bloc.dart';
import 'package:prayer_hub/bloc/bloc_provider.dart';
import 'package:prayer_hub/bloc/chat_bloc.dart';
import 'package:prayer_hub/bloc/login_bloc.dart';
import 'package:prayer_hub/bloc/signup_bloc.dart';
import 'package:prayer_hub/bottom_navigation.dart';
import 'package:prayer_hub/pages/agora_rm.dart';
import 'package:prayer_hub/pages/chat_page.dart';
import 'package:prayer_hub/pages/home_page.dart';
import 'package:prayer_hub/pages/login_page.dart';
import 'package:prayer_hub/pages/profile_page.dart';
import 'package:prayer_hub/pages/signup_page.dart';
import 'package:prayer_hub/pages/video_call_page.dart';
import 'package:prayer_hub/pages/video_calling_page.dart';
import 'package:prayer_hub/pages/voice_call_page.dart';
import 'package:prayer_hub/pages/voice_calling_page.dart';
import 'package:prayer_hub/util.dart';

void main() {
  runApp(
    BlocProvider(
      bloc: SignupBloc(),
      child: BlocProvider(
        bloc: LoginBloc(),
        child: BlocProvider(
          bloc: AppBloc(),
          child: BlocProvider(
            bloc: ChatBloc(),
            child: MyApp(),
          ),
        ),
      ),
    ),
  );
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
        // MyAppRm.id: (context) => MyAppRm(),
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
