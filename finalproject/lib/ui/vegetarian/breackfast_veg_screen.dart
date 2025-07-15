import 'package:flutter/material.dart';
import 'package:finalproject/data/vegetarian_breakfast_recipes.dart';
import 'package:finalproject/ui/RecipeDetailsScreen.dart';
import 'package:finalproject/widgets/recipe_card.dart';

class BreakfastVScreen extends StatefulWidget {
  const BreakfastVScreen({super.key});

  @override
  State<BreakfastVScreen> createState() => _BreakfastVScreenState();
}

class _BreakfastVScreenState extends State<BreakfastVScreen> {
  final Set<int> favoriteIndexes = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('Vegetarian Breakfast')),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemCount: vegetarianBreakfastRecipes.length,
          itemBuilder: (context, index) {
            final recipe = vegetarianBreakfastRecipes[index];
            final isFavorite = favoriteIndexes.contains(index);

            return RecipeCard(
              title: recipe.title,
              duration: recipe.duration,
              isFavorite: isFavorite,
              onFavoriteToggle: () {
                setState(() {
                  if (isFavorite) {
                    favoriteIndexes.remove(index);
                  } else {
                    favoriteIndexes.add(index);
                  }
                });
              },
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
