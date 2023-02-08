import 'package:flutter/material.dart';
import 'package:loginpage/pages/home_page.dart';
import 'package:loginpage/pages/login_page.dart';
import 'package:loginpage/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {'/splash': (_) => const SplashPage(), '/login': (_) => LoginPage(), '/homepage': (_) => const HomePage()},
    );
  }
}
