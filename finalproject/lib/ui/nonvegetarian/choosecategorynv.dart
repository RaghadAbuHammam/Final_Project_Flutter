import 'package:finalproject/core/constants/colors.dart';
import 'package:finalproject/core/constants/strings.dart';
import 'package:flutter/material.dart';

class Choosecategorynv extends StatelessWidget {
  const Choosecategorynv({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.wellcometextnv,
          style: TextStyle(
            color: AppColors.nvegText,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routbreakfastnv');
          },
          label: Text(
            'BreakFast',
            style: TextStyle(
              color: AppColors.nvegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(
            Icons.breakfast_dining_outlined,
            color: AppColors.nvegText,
          ),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routlunchnv');
          },
          label: Text(
            'Lunch',
            style: TextStyle(
              color: AppColors.nvegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.lunch_dining, color: Colors.black),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routdinnernv');
          },
          label: Text(
            'Dinner',
            style: TextStyle(
              color: AppColors.nvegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.dinner_dining, color: Colors.black),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routdessertnv');
          },
          label: Text(
            'Desserts',
            style: TextStyle(
              color: AppColors.nvegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.cookie_outlined, color: AppColors.nvegText),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pushNamed('routsnacknv');
          },
          label: Text(
            'Snacks',
            style: TextStyle(
              color: AppColors.nvegText,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: Icon(Icons.bakery_dining_rounded, color: AppColors.nvegText),
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
                  backgroundColor: AppColors.nvegBackground,
                ),
                child: Text(
                  'Go Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.nvegText,
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