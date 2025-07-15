import 'package:finalproject/core/constants/assets.dart';
import 'package:finalproject/core/constants/colors.dart';
import 'package:finalproject/core/constants/strings.dart';
import 'package:finalproject/widgets/choose_categoryv.dart';
import 'package:finalproject/widgets/custom_appbar.dart';
//import 'package:finalproject/widgets/custom_bottom_nav.dart';
import 'package:finalproject/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VegetarianScreen extends StatefulWidget {
  const VegetarianScreen({super.key});

  @override
  State<VegetarianScreen> createState() => _VegetarianScreenState();
}

class _VegetarianScreenState extends State<VegetarianScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.vegBackground,
      appBar: CustomAppbar(),
      drawer: CustomDrawer(),
      //bottomNavigationBar: CustomNavBar(currentIndex: 0, onTap: (index) {}),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.5,
                    child: Lottie.network(AppAssets.vegetarianAnimation),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    AppStrings.wellcometextv,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.vegText,
                      fontSize: screenWidth * 0.04 + 10,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  const ChooseCategory(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
