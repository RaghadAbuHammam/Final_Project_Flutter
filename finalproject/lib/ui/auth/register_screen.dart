import 'package:finalproject/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:finalproject/core/constants/colors.dart';
import 'package:finalproject/core/constants/strings.dart';
import 'package:finalproject/core/constants/assets.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.reglogBackground,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  child: Lottie.network(AppAssets.registerAnimation),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    AppStrings.registerTitle,
                    style: TextStyle(
                      color: AppColors.reglogText,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
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
                      prefixIcon: Icon(Icons.abc, color: AppColors.reglogText),
                      labelText: AppStrings.nameLabel,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.reglogText,
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
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.inputBorder,
                          width: 3,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.inputBorder,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
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
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: AppColors.reglogText,
                      ),
                      labelText: AppStrings.passwordLabel,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.reglogText,
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
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.inputBorder,
                          width: 3,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
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
                      if (_formKey.currentState!.validate()) {
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
                    ),
                    child: Text(
                      AppStrings.registerButton,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.reglogText,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, top: 30),
                  child: Row(
                    children: [
                      Text(
                        AppStrings.haveAccount,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('routelogin');
                        },
                        child: Text(
                          AppStrings.signIn,
                          style: TextStyle(
                            color: AppColors.reglogText,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
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
