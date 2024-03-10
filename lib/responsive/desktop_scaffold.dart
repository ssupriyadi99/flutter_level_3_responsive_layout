import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_level_3_responsive_layout/constants.dart';
import 'package:flutter_level_3_responsive_layout/util/my_box.dart';
import 'package:flutter_level_3_responsive_layout/util/my_tile.dart';

class DesktopScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var faker = Faker();

    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(children: [
        //drawer
        myDrawer,

        //body
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // first 4 boxes in grid
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return MyBox();
                      },
                    ),
                  ),
                ),

                // list of previous days
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.orange[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(faker.lorem.sentences(5).join('\n')),
                ),
              ),
            )
          ],
        ))
      ]),
    );
  }
}
