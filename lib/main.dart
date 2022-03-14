import 'package:flutter/material.dart';
import 'package:kuis1_tpm/restaurant_page.dart';

import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NoteAPP",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RestaurantPage(),
    );
  }
}