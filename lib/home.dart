import 'package:flutter/material.dart';

// lets create a initial display for the app a menu that is going to be called on main

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // lets create a list of cars that is going to be displayed on the app
    final List<Car> cars = [
      const Car(
        brand: 'Ford',
        model: 'Mustang',
        year: 1969,
      ),
      const Car(
        brand: 'Ford',
        model: 'F-150',
        year: 2019,
      ),
      const Car(
        brand: 'Chevrolet',
        model: 'Camaro',
        year: 1979,
      ),
      const Car(
        brand: 'Chevrolet',
        model: 'Silverado',
        year: 2019,
      ),
      const Car(
        brand: 'Dodge',
        model: 'Challenger',
        year: 1979,
      ),
      const Car(
        brand: 'Dodge',
        model: 'Ram',
        year: 2019,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Car List'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${cars[index].brand} ${cars[index].model}'),
            subtitle: Text('${cars[index].year}'),
          );
        },
      ),
    );
  }
}

class Car {
  final String brand;
  final String model;
  final int year;

  const Car({
    required this.brand,
    required this.model,
    required this.year,
  });
}
