import 'package:flutter/material.dart';

class Plant {
  final String name;
  final String description;
  final String price;
  final AssetImage image1;
  final AssetImage image2;
  final AssetImage image3;

  Plant({
    required this.name,
    required this.description,
    required this.price,
    required this.image1,
    required this.image2,
    required this.image3,
  });
}
