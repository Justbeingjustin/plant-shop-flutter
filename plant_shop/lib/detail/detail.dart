import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_shop/detail/detail_app_bar.dart';
import 'package:plant_shop/detail/detail_column.dart';
import 'package:plant_shop/intro/intro_carousel_indicator.dart';
import 'package:plant_shop/intro/intro_column.dart';
import 'package:plant_shop/models/plant.dart';

class Detail extends StatefulWidget {
  final Plant plant;

  Detail({required this.plant});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late PageController _controller;
  int _currentPage = 0; // Or initialize it with another value you prefer

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentPage)
      ..addListener(() {
        setState(() {
          _currentPage = _controller.page!.round();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: DetailAppBar(
          title: '',
          onBackTap: () {
            Navigator.of(context).pop();
          },
          onActionTap: () {},
        ),
      ),
      body: DetailColumn(
        plant: widget.plant,
        controller: _controller,
        currentPage: _currentPage,
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(seconds: 1),
        height: 200, // Increased height
        decoration: BoxDecoration(
          color: Color(0xFF77994A),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Added spacing
          children: [
            // First row with icons, text, and additional text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/height.png', // Replace with your image asset path
                      color: Colors.white, // Set the image color to white
                      height: 30, // Adjust the height as needed
                    ),
                    SizedBox(height: 4), // Added space between image and text
                    Text(
                      'Height',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 12, // Smaller font size
                      ),
                    ),
                    Text(
                      '30 cm - 40 cm',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 10, // Smaller font size for additional text
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/temperature.png', // Replace with your image asset path
                      color: Colors.white, // Set the image color to white
                      height: 30, // Adjust the height as needed
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Temperature',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 12, // Smaller font size
                      ),
                    ),
                    Text(
                      '20°C - 25°C',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 10, // Smaller font size for additional text
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/pot.png', // Replace with your image asset path
                      color: Colors.white, // Set the image color to white
                      height: 30, // Adjust the height as needed
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Pot',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 12, // Smaller font size
                      ),
                    ),
                    Text(
                      'Ceramic',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 10, // Smaller font size for additional text
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Second row with price and Add to Cart button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Total Price: \$100', // Replace with actual price
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add to Cart logic
                  },
                  child: Text('Add to Cart'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is removed
    super.dispose();
  }
}
