import 'package:flutter/material.dart';
import 'home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery App',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const HomeScreen(),
    );
  }
}
