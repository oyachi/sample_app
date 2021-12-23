import 'package:flutter/material.dart';
/* screens */
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon',
      theme: ThemeData(
        primaryColor: Color(0xFF80CBC4),
        accentColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
