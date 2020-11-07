import 'package:fitness_muffin_app/screens/home/home_screen.dart';
import 'package:fitness_muffin_app/screens/workouts/workouts_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomeScreen(),
  '/workouts': (BuildContext context) => WorkoutsScreen()
};
