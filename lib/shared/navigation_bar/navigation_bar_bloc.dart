import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBarBloc extends Cubit<String> {
  NavigationBarBloc(String initialRoute) : super(initialRoute);

  void navigate(BuildContext context, String route) {
    if (state != route) {
      Navigator.pushReplacementNamed(context, route);
      emit(route);
    }
  }
}
