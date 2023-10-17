import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant.dart';

class PlantService {
  List<Plant> getPlants() {
    return [
      Plant(
        name: 'Blank',
        description: 'No description available',
        price: '\$12.99',
        image1: AssetImage('assets/plant_4.png'),
        image2: AssetImage('assets/plant_4.png'),
        image3: AssetImage('assets/plant_4.png'),
      ),
      Plant(
        name: 'Lucky Jade Plant',
        description: 'A beautiful and easy-to-care-for indoor plant.',
        price: '\$12.99',
        image1: AssetImage('assets/plant_4.png'),
        image2: AssetImage('assets/plant_4.png'),
        image3: AssetImage('assets/plant_4.png'),
      ),
      Plant(
        name: 'Snake Plant',
        description: 'A low-maintenance and air-purifying houseplant.',
        price: '\$12.99',
        image1: AssetImage('assets/plant_5.png'),
        image2: AssetImage('assets/plant_5.png'),
        image3: AssetImage('assets/plant_5.png'),
      ),
      Plant(
        name: 'Peperomia',
        description: 'Super greens for your indoor garden.',
        price: '\$12.99',
        image1: AssetImage('assets/plant_7.png'),
        image2: AssetImage('assets/plant_7.png'),
        image3: AssetImage('assets/plant_7.png'),
      ),
      Plant(
        name: 'Small Plant',
        description: 'Super greens for compact spaces.',
        price: '\$12.99',
        image1: AssetImage('assets/plant_6.png'),
        image2: AssetImage('assets/plant_6.png'),
        image3: AssetImage('assets/plant_6.png'),
      ),
      Plant(
        name: 'Medium Plant',
        description: 'Lush greenery to brighten up your space.',
        price: '\$12.99',
        image1: AssetImage('assets/plant_2.png'),
        image2: AssetImage('assets/plant_2.png'),
        image3: AssetImage('assets/plant_2.png'),
      ),
    ];
  }
}
