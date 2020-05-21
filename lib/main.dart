import 'package:flutter/material.dart';
import 'package:flutterapp/screens/feed_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Softwarica App',
      home: FeedScreen(),
    );
  }
}
