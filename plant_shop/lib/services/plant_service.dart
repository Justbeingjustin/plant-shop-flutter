import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant.dart';

class PlantService {
  List<Plant> getPlants() {
    return [
      Plant(
          name: 'Blank',
          description: '',
          price: '\$12.99',
          image: AssetImage('assets/plant_4.png')),
      Plant(
          name: 'Lucky Jade Plant',
          description: '',
          price: '\$12.99',
          image: AssetImage('assets/plant_4.png')),
      Plant(
          name: 'Snake Plant',
          description: '',
          price: '\$12.99',
          image: AssetImage('assets/plant_5.png')),
      Plant(
          name: 'Peperomia',
          description: 'Super greens',
          price: '\$12.99',
          image: AssetImage('assets/plant_7.png')),
      Plant(
          name: 'Small Plant',
          description: 'Super greens',
          price: '\$12.99',
          image: AssetImage('assets/plant_6.png')),
      Plant(
          name: 'Medium Plant',
          description: 'Super greens',
          price: '\$12.99',
          image: AssetImage('assets/plant_2.png')),
    ];
  }
}
