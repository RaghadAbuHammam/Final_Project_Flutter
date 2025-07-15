//import 'package:finalproject/ui/favorites_screen.dart';
import 'package:flutter/material.dart';

import 'package:finalproject/ui/auth/login_screen.dart';
import 'package:finalproject/ui/auth/register_screen.dart';
import 'package:finalproject/ui/choose/choose_screen.dart';
import 'package:finalproject/ui/vegetarian/vegetarian_screen.dart';
import 'package:finalproject/ui/nonvegetarian/nonvegetarian_screen.dart';

import 'package:finalproject/ui/vegetarian/breackfast_veg_screen.dart';
import 'package:finalproject/ui/vegetarian/lunch_veg_screen.dart';
import 'package:finalproject/ui/vegetarian/dinner_veg_screen.dart';
import 'package:finalproject/ui/vegetarian/dessert_veg_screen.dart';
import 'package:finalproject/ui/vegetarian/snack_veg_screen.dart';

import 'package:finalproject/ui/nonvegetarian/breackfast_nveg_screen.dart';
import 'package:finalproject/ui/nonvegetarian/lunch_nveg_screen.dart';
import 'package:finalproject/ui/nonvegetarian/dinner_nveg_screen.dart';
import 'package:finalproject/ui/nonvegetarian/dessert_nveg_screen.dart';
import 'package:finalproject/ui/nonvegetarian/snak_nveg_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'routeregister': (context) => RegisterScreen(),
  'routelogin': (context) => LoginScreen(),
  'routechoose': (context) => ChooseScreen(),

  // vegetarian
  'routevegetarian': (context) => VegetarianScreen(),
  'routbreakfastv': (context) => BreakfastVScreen(),
  'routlunchv': (context) => LunchVScreen(),
  'routdinnerv': (context) => DinnerVScreen(),
  'routdessertv': (context) => DessertVScreen(),
  'routsnackv': (context) => SnackVScreen(),

  // non-vegetarian
  'routenonvegetarian': (context) => NonVegetarianScreen(),
  'routbreakfastnv': (context) => BreakfastNVScreen(),
  'routlunchnv': (context) => LunchNVScreen(),
  'routdinnernv': (context) => DinnerNVScreen(),
  'routdessertnv': (context) => DessertNVScreen(),
  'routsnacknv': (context) => SnackNVScreen(),

  //'routfav': (context) => FavoritesScreen(favoriteIndexes: favoriteIndexes, onFavoriteToggle: onFavoriteToggle),
};
