import 'package:finalproject/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:finalproject/core/constants/colors.dart';
import 'package:finalproject/core/constants/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.reglogBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Form(
            key: formKey,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    width: size.width * 0.6,
                    child: Lottie.network(
                      'https://lottie.host/0498fd41-11e5-4680-884f-857276883652/K7tSiWlDP0.json',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      AppStrings.loginTitle,
                      style: TextStyle(
                        color: AppColors.reglogText,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.07,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppStrings.nameError;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.abc,
                          color: AppColors.reglogText,
                        ),
                        label: Text(
                          AppStrings.nameLabel,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.reglogText,
                          ),
                        ),
                        hintText: AppStrings.nameHint,
                        hintStyle: TextStyle(
                          color: AppColors.inputHint,
                          fontSize: 15,
                        ),
                        filled: true,
                        fillColor: AppColors.inputFill,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: AppColors.inputBorder,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.inputBorder,
                            width: 3,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.inputBorder,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: (value) {
                        if (value == null ||
                            value.length < 8 ||
                            !RegExp(
                              r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$',
                            ).hasMatch(value)) {
                          return AppStrings.passwordError;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: AppColors.reglogText,
                        ),
                        label: Text(
                          AppStrings.passwordLabel,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.reglogText,
                          ),
                        ),
                        hintText: AppStrings.passwordHint,
                        hintStyle: TextStyle(
                          color: AppColors.inputHint,
                          fontSize: 15,
                        ),
                        filled: true,
                        fillColor: AppColors.inputFill,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: AppColors.inputBorder,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.inputBorder,
                            width: 3,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.inputBorder,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      CustomBottomNav(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.reglogBackground,
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.3,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text(
                        AppStrings.loginButton,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.reglogText,
                          fontSize: size.width * 0.05,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('routeregister');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.reglogBackground,
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.2,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Text(
                            AppStrings.goBack,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.reglogText,
                              fontSize: size.width * 0.045,
                            ),
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
