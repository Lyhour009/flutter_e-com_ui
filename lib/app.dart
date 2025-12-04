import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter E-Commerce UI',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: SplashScreen(),
    );
  }
}
