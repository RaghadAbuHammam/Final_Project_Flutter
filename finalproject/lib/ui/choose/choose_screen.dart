import 'package:finalproject/core/constants/colors.dart';
import 'package:finalproject/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChooseScreen extends StatefulWidget {
  String? name;
  ChooseScreen({super.key, this.name});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  List<String> VON = ['', ''];
  List<String> img = [
    'https://thumbs.dreamstime.com/b/vegetables-fruits-arranged-circle-green-background-generative-ai-269666131.jpg',
    'https://vid.alarabiya.net/images/2018/08/08/dbba98ba-41d3-48e6-b823-f14e3e23d64c/dbba98ba-41d3-48e6-b823-f14e3e23d64c_16x9_600x338.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.chooseBackground,
      bottomNavigationBar: CustomBottomNav(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Text(
                  'Wellcome ${widget.name}',
                  style: TextStyle(
                    color: AppColors.chooseText,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Please select !',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.chooseText,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Are you...... ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.chooseText,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Vegetarian OR Non-Vegetarian ? ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.chooseText,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 25),

                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(img[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 150, left: 40),
                            child: Text(
                              VON[index],
                              style: TextStyle(
                                color: AppColors.chooseText,
                                fontWeight: FontWeight.bold,
                                backgroundColor: AppColors.chooseButton,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: img.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 100),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('routevegetarian');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.chooseButton,
                        ),
                        child: Text(
                          'Vegetarian',
                          style: TextStyle(
                            color: AppColors.chooseText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('routenonvegetarian');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.chooseButton,
                        ),
                        child: Text(
                          'Non_Vegetarian',
                          style: TextStyle(
                            color: AppColors.chooseText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
