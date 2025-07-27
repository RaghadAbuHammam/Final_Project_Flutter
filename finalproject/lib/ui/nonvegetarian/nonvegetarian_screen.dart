import 'package:finalproject/core/constants/assets.dart';
import 'package:finalproject/core/constants/colors.dart';
import 'package:finalproject/ui/nonvegetarian/choosecategorynv.dart';
import 'package:finalproject/widgets/custom_appbar.dart';
import 'package:finalproject/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class NonVegetarianScreen extends StatefulWidget {
  const NonVegetarianScreen({super.key});

  @override
  State<NonVegetarianScreen> createState() => _NonVegetarianScreenState();
}

class _NonVegetarianScreenState extends State<NonVegetarianScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.nvegBackground,
      appBar: CustomAppbar(),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02,
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.02),
                  Image.network(
                    AppAssets.nvegetarianAnimation,
                    width: screenWidth * 0.6,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  const Choosecategorynv(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
