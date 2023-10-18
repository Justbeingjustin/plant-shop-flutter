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
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12, // Smaller font size
                      ),
                    ),
                    Text(
                      '${widget.plant.minHeight} cm - ${widget.plant.maxHeight} cm',
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12, // Smaller font size
                      ),
                    ),
                    Text(
                      '${widget.plant.minTemp}°C - ${widget.plant.maxTemp}°C',
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12, // Smaller font size
                      ),
                    ),
                    Text(
                      widget.plant.potType,
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
            Row(
              // Use Row
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Keep the alignment
                    children: [
                      Padding(
                        // Added Padding
                        padding:
                            const EdgeInsets.only(left: 40.0), // Left padding
                        child: Text(
                          'Total Price',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        // Added Padding
                        padding:
                            const EdgeInsets.only(left: 40.0), // Left padding
                        child: Text(
                          '\$${widget.plant.price} ', // Replace with actual price
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  // Added right Padding
                  padding: const EdgeInsets.only(right: 20.0), // Right padding
                  child: ElevatedButton(
                    onPressed: () {
                      // Add to Cart logic
                    },
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16, // Make text larger
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF67864a),
                      onPrimary: Colors.white,
                      minimumSize: Size(170, 80), // Set the minimum size
                      shape: RoundedRectangleBorder(
                        // Add this line
                        borderRadius:
                            BorderRadius.circular(20.0), // Add this line
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Second row with price and Add to Cart button
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
