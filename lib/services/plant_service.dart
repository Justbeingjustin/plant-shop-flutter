import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant.dart';

class PlantService {
  List<Plant> getPlants() {
    return [
      Plant(
        name: 'Blank Plant',
        description: 'No description available',
        price: 12.99,
        image1: AssetImage('assets/plant_4.png'),
        image2: AssetImage('assets/plant_3.png'),
        image3: AssetImage('assets/plant_2.png'),
        longDescription:
            'The Blank Plant is a mysterious and rare specimen in the plant world. '
            'It is characterized by its unassuming appearance, with plain green leaves and '
            'no distinct features. Due to its enigmatic nature, it has become a conversation '
            'piece among plant enthusiasts. \n\n',
        minHeight: 10, // Add minimum height
        maxHeight: 30, // Add maximum height
        minTemp: 18, // Add minimum temperature
        maxTemp: 25, // Add maximum temperature
        potType: 'Ceramic', // Add pot type
      ),
      Plant(
        name: 'Lucky Jade Plant',
        description: 'A beautiful and easy-to-care-for indoor plant.',
        price: 19.99,
        image1: AssetImage('assets/plant_4.png'),
        image2: AssetImage('assets/plant_3.png'),
        image3: AssetImage('assets/plant_2.png'),
        longDescription:
            'The Lucky Jade Plant, scientifically known as Crassula ovata, is a '
            'popular choice for indoor gardening. Its succulent leaves are shaped like '
            'jade coins, symbolizing wealth and prosperity. This is low-maintenance plant.',

        minHeight: 15, // Add minimum height
        maxHeight: 45, // Add maximum height
        minTemp: 20, // Add minimum temperature
        maxTemp: 28, // Add maximum temperature
        potType: 'Terracotta', // Add pot type
      ),
      Plant(
        name: 'Snake Plant',
        description: 'A low-maintenance and air-purifying houseplant.',
        price: 24.99,
        image1: AssetImage('assets/plant_5.png'),
        image2: AssetImage('assets/plant_4.png'),
        image3: AssetImage('assets/plant_3.png'),
        longDescription:
            'The Snake Plant, also known as Sansevieria, is a versatile and '
            'hardy houseplant. Its long, sword-shaped leaves are a striking addition to '
            'any indoor space. Besides its aesthetic appeal, the Snake Plant is known for '
            'its air-purifying abilities, making it an excellent choice.\n\r\n ',
        minHeight: 12, // Add minimum height
        maxHeight: 36, // Add maximum height
        minTemp: 15, // Add minimum temperature
        maxTemp: 28, // Add maximum temperature
        potType: 'Plastic', // Add pot type
      ),
      Plant(
        name: 'Peperomia',
        description: 'Super greens for your indoor garden.',
        price: 14.99,
        image1: AssetImage('assets/plant_7.png'),
        image2: AssetImage('assets/plant_6.png'),
        image3: AssetImage('assets/plant_5.png'),
        longDescription:
            'The Peperomia plant is a delightful addition to your indoor garden. '
            'With its vibrant green leaves and unique textures, it adds a touch of elegance '
            'to your home decor. Peperomias are known for their resilience and adaptability. ',

        minHeight: 8, // Add minimum height
        maxHeight: 20, // Add maximum height
        minTemp: 18, // Add minimum temperature
        maxTemp: 25, // Add maximum temperature
        potType: 'Ceramic', // Add pot type
      ),
      Plant(
        name: 'Small Plant',
        description: 'Super greens for compact spaces.',
        price: 9.99,
        image1: AssetImage('assets/plant_6.png'),
        image2: AssetImage('assets/plant_5.png'),
        image3: AssetImage('assets/plant_4.png'),
        longDescription:
            'The Small Plant collection is specially curated for those with limited '
            'space. These petite greens may be small in size but are big on charm. Perfect for '
            'apartments, offices, or any cozy corner that needs a touch of nature.',
        minHeight: 5, // Add minimum height
        maxHeight: 15, // Add maximum height
        minTemp: 20, // Add minimum temperature
        maxTemp: 28, // Add maximum temperature
        potType: 'Terracotta', // Add pot type
      ),
      Plant(
        name: 'Medium Plant',
        description: 'Lush greenery to brighten up your space.',
        price: 29.99,
        image1: AssetImage('assets/plant_2.png'),
        image2: AssetImage('assets/plant_1.png'),
        image3: AssetImage('assets/plant_6.png'),
        longDescription:
            'The Medium Plant collection features a variety of lush greenery '
            'to transform your living spaces into vibrant paradises. These plants require '
            'a bit more space to thrive and can become the centerpiece of your home decor. '
            'Choose from a selection of sizes and styles to suit your preferences.',
        minHeight: 15, // Add minimum height
        maxHeight: 30, // Add maximum height
        minTemp: 18, // Add minimum temperature
        maxTemp: 25, // Add maximum temperature
        potType: 'Ceramic', // Add pot type
      )
    ];
  }
}
