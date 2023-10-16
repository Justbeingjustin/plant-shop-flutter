import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_shop/intro/intro.dart';
import 'package:plant_shop/services/plant_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final plantService = PlantService();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroPage(
        title: 'Plant Shop',
        plantService: plantService,
      ),
    );
  }
}
