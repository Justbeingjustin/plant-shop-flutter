import 'package:flutter/material.dart';
import 'package:plant_shop/detail/detail.dart';
import 'package:plant_shop/home/home_app_bar.dart';
import 'package:plant_shop/home/home_search_and_filter_row.dart';
import 'package:plant_shop/home/plant_card.dart';
import 'package:plant_shop/models/plant.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  final List<Plant> plants;

  Home({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    return Scaffold(
      backgroundColor: Color(0xFFe8e8e9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: HomeAppBar(
          title: 'Search Products',
          onBackTap: () {
            Navigator.of(context).pop();
          },
          onActionTap: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        child: Column(
          children: [
            HomeSearchAndFilterRow(focusNode: focusNode),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: plants.length,
                  itemBuilder: (BuildContext context, int index) {
                    double screenHeight = MediaQuery.of(context).size.height;
                    double calculatedHeight = index == 0
                        ? screenHeight * 0.15
                        : screenHeight * 0.3; // 10% and 20% of screen height
                    if (index == 0) {
                      return Container(
                          height: calculatedHeight,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8.0),
                              Text(
                                'Found',
                                style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${plants.length - 1} Results',
                                style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ));
                    }

                    return Container(
                      height: calculatedHeight,
                      color: Colors.transparent,
                      child: PlantCard(
                        plant: plants[index],
                        onCardClick: (p0) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  Detail(plant: plants[index]),
                            ),
                          );
                        },
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
