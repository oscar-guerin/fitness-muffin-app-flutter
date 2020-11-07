import 'package:fitness_muffin_app/routes.dart';
import 'package:fitness_muffin_app/shared/navigation_bar/navigation_bar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBarBloc>(
            create: (BuildContext context) => NavigationBarBloc('/'))
      ],
      child: MaterialApp(
        title: 'Fitness Muffin',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
