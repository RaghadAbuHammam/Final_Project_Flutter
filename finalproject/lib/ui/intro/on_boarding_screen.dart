import 'package:finalproject/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:lottie/lottie.dart';

import 'package:finalproject/core/constants/colors.dart';
import 'package:finalproject/core/constants/strings.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController();
  bool isLastPage = false;

  List<String> images = [AppAssets.wellcomeAnimation, AppAssets.favAnimation];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.onboardingBackground,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = (index == images.length - 1);
                });
              },
              children: List.generate(
                images.length,
                (index) => FirstIntro(
                  image: images[index],
                  text: AppStrings.onboardingTexts[index],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.75,
              left: screenWidth * 0.2,
              right: screenWidth * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: images.length,
                    effect: WormEffect(
                      activeDotColor: AppColors.indicatorActive,
                      dotColor: AppColors.indicatorInactive,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (isLastPage) {
                        Navigator.of(context).pushNamed('routeregister');
                      } else {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      isLastPage ? AppStrings.done : AppStrings.next,
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                        color: AppColors.onboardingText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstIntro extends StatelessWidget {
  final String image;
  final String text;

  const FirstIntro({required this.image, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: screenHeight * 0.05),
        SizedBox(
          height: screenHeight * 0.4,
          width: screenWidth * 0.9,
          child: Lottie.asset(image),
        ),
        SizedBox(height: screenHeight * 0.08),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.05,
              color: AppColors.onboardingText,
            ),
          ),
        ),
      ],
    );
  }
}
