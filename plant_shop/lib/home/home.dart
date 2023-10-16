import 'package:flutter/material.dart';
import 'package:plant_shop/home/home_app_bar.dart';
import 'package:plant_shop/home/home_search_and_filter_row.dart';
import 'package:plant_shop/home/plant_card.dart';
import 'package:plant_shop/models/plant.dart';

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
              child: ListView(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: plants.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FutureBuilder<void>(
                        future: Future.delayed(Duration(
                            milliseconds:
                                index * 700)), // 300ms delay for each item
                        builder: (context, snapshot) {
                          return AnimatedOpacity(
                            opacity:
                                snapshot.connectionState == ConnectionState.done
                                    ? 1.0
                                    : 0.0,
                            duration: Duration(milliseconds: 300),
                            child: index == 0
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  )
                                : Transform.translate(
                                    offset: index % 2 == 0
                                        ? Offset(0, -120)
                                        : Offset(0, 0),
                                    child: PlantCard(plant: plants[index]),
                                  ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
