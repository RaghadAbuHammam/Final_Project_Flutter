import 'package:finalproject/data/vegetarian_lunch_recipes.dart';
import 'package:finalproject/ui/RecipeDetailsScreen.dart';
import 'package:finalproject/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class LunchVScreen extends StatelessWidget {
  const LunchVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('Vegetarian Lunch')),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemCount: vegetarianLunchRecipes.length,
          itemBuilder: (context, index) {
            final recipe = vegetarianLunchRecipes[index];
            return RecipeCard(
              title: recipe.title,
              duration: recipe.duration,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RecipeDetailsScreen(recipe: recipe),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
