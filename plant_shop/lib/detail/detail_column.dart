import 'package:flutter/material.dart';
import 'package:plant_shop/detail/detail_carousel.dart';
import 'package:plant_shop/detail/detail_carousel_indicator.dart';
import 'package:plant_shop/models/plant.dart';

class DetailColumn extends StatelessWidget {
  final PageController controller;
  final int currentPage;
  final Plant plant;

  const DetailColumn({
    Key? key,
    required this.plant,
    required this.controller,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              DetailCarousel(controller: controller, plant: plant),
              Positioned(
                bottom: 10,
                right: 30,
                child: Padding(
                  // Added Padding widget
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20), // Added horizontal padding
                  child: DetailCarouselIndicator(currentPage: currentPage),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
