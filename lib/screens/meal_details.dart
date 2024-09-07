import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 10,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          Text(
            'Ingredients',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(
            height: 20,
          ),
          for (final ingredient in meal.ingredients)
            Text(
              ingredient,
              style: const TextStyle(color: Colors.white),
            ),
        ],
      ),
    );
  }
}
