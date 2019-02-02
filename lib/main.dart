import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_q/Pages/HomePage.dart';
import 'package:flutter_q/Pages/SignInPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SignInPage(),
    );
  }
}
