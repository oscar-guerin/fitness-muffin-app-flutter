import 'package:fitness_muffin_app/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(child: Text('Hello World')),
      bottomNavigationBar: NavigationBarWidget(),
    );
  }
}
