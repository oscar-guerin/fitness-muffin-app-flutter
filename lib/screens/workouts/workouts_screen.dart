import 'package:fitness_muffin_app/shared/navigation_bar.dart';
import 'package:flutter/material.dart';

class WorkoutsScreen extends StatelessWidget {
  WorkoutsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workouts'),
      ),
      body: Center(child: Text('Workouts')),
      bottomNavigationBar: NavigationBarWidget(),
    );
  }
}
