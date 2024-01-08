import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const CarRecord(
    title: 'Car Record',
    home: Home(),
  ));
}

class CarRecord extends StatelessWidget {
  const CarRecord({Key? key, required this.title, required this.home})
      : super(key: key);

  final String title;
  final Widget home;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: title,
      home: home,
    );
  }
}
