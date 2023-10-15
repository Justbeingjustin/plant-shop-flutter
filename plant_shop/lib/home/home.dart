import 'package:flutter/material.dart';
import 'package:plant_shop/home/home_app_bar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe8e8e9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: HomeAppBar(
          title: 'Search Products',
          onBackTap: () {
            Navigator.of(context).pop();
          },
          onActionTap: () {
            // Your action here
          },
        ),
      ),
      body: const Center(
        child: Text('Welcome to the second page!'),
      ),
    );
  }
}
