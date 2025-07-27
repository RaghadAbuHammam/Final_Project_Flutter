import 'package:finalproject/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ChooseCategory extends StatelessWidget {
  const ChooseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'What recipe do you want?',
          style: TextStyle(
            color: AppColors.vegText,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routbreakfastv');
          },
          label: Text(
            'BreakFast',
            style: TextStyle(
              color: AppColors.vegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.breakfast_dining_outlined, color: AppColors.vegText),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routlunchv');
          },
          label: Text(
            'Lunch',
            style: TextStyle(
              color: AppColors.vegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.lunch_dining, color: AppColors.vegText),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routdinnerv');
          },
          label: Text(
            'Dinner',
            style: TextStyle(
              color: AppColors.vegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.dinner_dining, color: AppColors.vegText),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routdessertv');
          },
          label: Text(
            'Desserts',
            style: TextStyle(
              color: AppColors.vegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.cookie_outlined, color: AppColors.vegText),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routsnackv');
          },
          label: Text(
            'Snacks',
            style: TextStyle(
              color: AppColors.vegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.bakery_dining_rounded, color: AppColors.vegText),
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade300,
                ),
                child: Text(
                  'Go Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.vegText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}