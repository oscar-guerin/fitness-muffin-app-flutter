import 'package:fitness_muffin_app/shared/navigation_bar/navigation_bar_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBarWidget extends StatelessWidget {
  final itemRoutes = ['/', '/workouts'];

  @override
  Widget build(BuildContext context) {
    final NavigationBarBloc navigationBarBloc =
        BlocProvider.of<NavigationBarBloc>(context);

    return BlocBuilder<NavigationBarBloc, String>(
        cubit: navigationBarBloc,
        builder: (context, state) {
          return BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                label: 'Workouts',
              ),
            ],
            currentIndex:
                itemRoutes.indexWhere((String element) => element == state),
            onTap: (int index) =>
                navigationBarBloc.navigate(context, itemRoutes[index]),
          );
        });
  }
}
