import 'package:flutter/material.dart';
import 'package:news/homepage.dart';
import 'package:news/login.dart';
import 'package:news/registration.dart';
import 'package:news/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final routes = <String, WidgetBuilder>{
      StartPage.tag: (context) => StartPage(),
      LoginPage.tag: (context) => LoginPage(),
      SignUpPage.tag: (context) => SignUpPage(),
      HomePage.tag: (context) => HomePage(),
    };

    return MaterialApp(
      title: 'News OTG',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:StartPage(),
      routes: routes,
    );
  }
}

