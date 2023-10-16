import 'package:flutter/material.dart';

class Plant {
  final String name;
  final String description;
  final String price;
  final AssetImage image;

  Plant(
      {required this.name,
      required this.description,
      required this.price,
      required this.image});
}
