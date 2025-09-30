import 'package:flutter/material.dart';
import 'package:magic_project/screens/screens.dart';

class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => HomeScreen(),
  };
}
