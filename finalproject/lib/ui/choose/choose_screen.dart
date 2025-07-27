import 'package:finalproject/core/constants/assets.dart';
import 'package:finalproject/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/core/constants/colors.dart';

// ignore: must_be_immutable
class ChooseScreen extends StatefulWidget {
  String? name;
  ChooseScreen({super.key, this.name});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: AppColors.chooseBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.05,
                horizontal: width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.wellcometext,
                    style: TextStyle(
                      color: AppColors.chooseText,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.07,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.015),
                  Text(
                    AppStrings.selecttext,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.chooseText,
                      fontSize: width * 0.065,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    AppStrings.areyoutext,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.chooseText,
                      fontSize: width * 0.06,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    AppStrings.vornvtext,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.chooseText,
                      fontSize: width * 0.05,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.04),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            AppAssets.choose_1Animation,
                            height: height * 0.2,
                            width: width * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                           AppAssets.choose_2Animation,
                            height: height * 0.2,
                            width: width * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.06),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('routevegetarian');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.chooseButton,
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.015,
                            horizontal: width * 0.05,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Vegetarian',
                          style: TextStyle(
                            color: AppColors.chooseText,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.045,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.08),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('routenonvegetarian');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.chooseButton,
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.015,
                            horizontal: width * 0.05,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Non-Vegetarian',
                          style: TextStyle(
                            color: AppColors.chooseText,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.045,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
