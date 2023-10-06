import 'package:flutter/material.dart';
import 'package:nectar/pages/home_page.dart';
import 'package:nectar/pages/join_page.dart';
import 'package:nectar/pages/login_page.dart';
import 'package:nectar/pages/start_page.dart';
import 'package:nectar/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      initialRoute: "/login",
      routes: {
        "/start": (context) => StartPage(),
        "/home": (context) => HomePage(),
        "/join": (context) => JoinPage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
