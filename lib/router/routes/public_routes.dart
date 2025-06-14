import 'package:flutter/material.dart';
import 'package:prueba_tecnica/router/paths/routes.dart';
import 'package:prueba_tecnica/router/route_page_arguments.dart';
import 'package:prueba_tecnica/screens/cat_detail_screen.dart';
import 'package:prueba_tecnica/screens/home_screen.dart';

Route? generatePublicRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.homeScreen:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: settings,
      );
    case AppRoutes.catDetailScreen:
      return MaterialPageRoute<Widget>(
        builder: (BuildContext context) => CatDetailScreen(
          arguments: settings.arguments as CatDetailScreenArguments,
        ),
        settings: settings,
      );
  }
  return null;
}
