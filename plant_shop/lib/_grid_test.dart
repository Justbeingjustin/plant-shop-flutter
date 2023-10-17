import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Variable Height Grid View"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              double screenHeight = MediaQuery.of(context).size.height;
              double calculatedHeight = index == 0
                  ? screenHeight * 0.15
                  : screenHeight * 0.3; // 10% and 20% of screen height

              return Container(
                height: calculatedHeight,
                color: Colors.blue,
                child: Center(
                  child: Text('$index'),
                ),
              );
            },
            staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
        ),
      ),
    );
  }
}
