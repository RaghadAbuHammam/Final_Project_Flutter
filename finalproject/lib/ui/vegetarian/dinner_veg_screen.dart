import 'package:finalproject/core/constants/colors.dart';
import 'package:finalproject/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/data/vegetarian_dinner_recipes.dart';
import 'package:finalproject/ui/RecipeDetailsScreen.dart';

class DinnerVScreen extends StatefulWidget {
  const DinnerVScreen({super.key});

  @override
  State<DinnerVScreen> createState() => _DinnerVScreenState();
}

class _DinnerVScreenState extends State<DinnerVScreen> {
  final Set<int> _favoriteIndexes = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.vegBackground,
      appBar: AppBar(title: const Text(AppStrings.titledv)),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemCount: vegetarianDinnerRecipes.length,
          itemBuilder: (context, index) {
            final recipe = vegetarianDinnerRecipes[index];
            final isFavorite = _favoriteIndexes.contains(index);

            return Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => RecipeDetailsScreen(recipe: recipe),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          recipe.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Duration: ${recipe.duration}",
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isFavorite) {
                          _favoriteIndexes.remove(index);
                        } else {
                          _favoriteIndexes.add(index);
                        }
                      });
                    },
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
