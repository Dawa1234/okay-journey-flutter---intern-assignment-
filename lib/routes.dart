import 'package:flutter/material.dart';
import 'package:intern_assignment/screen/pageNavigation.dart';
import 'package:intern_assignment/screen/userDataScreen.dart';

final appRoutes = <String, WidgetBuilder>{
  PageNavigationScreen.route: (context) => const PageNavigationScreen(),
  DataScreen.route: (context) => const DataScreen()
};
