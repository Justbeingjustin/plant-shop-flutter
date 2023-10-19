import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant.dart';

class DetailPriceAndCartRow extends StatelessWidget {
  final Plant plant;
  DetailPriceAndCartRow({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Price',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '\$${plant.price}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Add to Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF67864a),
              onPrimary: Colors.white,
              minimumSize: Size(170, 80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
