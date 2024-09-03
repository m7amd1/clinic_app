import 'package:clinic_app/pages/home_page.dart';
import 'package:clinic_app/pages/login_page.dart';
import 'package:clinic_app/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const Signup(),
        "/home": (context) => const Home(),
      },
    );
  }
}
