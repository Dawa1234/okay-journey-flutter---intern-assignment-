import 'package:flutter/material.dart';
import 'package:intern_assignment/routes.dart';
import 'package:intern_assignment/screen/pageNavigation.dart';
import 'package:intern_assignment/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: baseDesign,
      debugShowCheckedModeBanner: false,
      initialRoute: PageNavigationScreen.route,
      routes: appRoutes,
    );
  }
}
