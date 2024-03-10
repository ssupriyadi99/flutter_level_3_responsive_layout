import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var faker = new Faker();

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.green[300],
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                faker.person.name().toUpperCase(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${faker.address.streetAddress()},  ${faker.address.country()}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
