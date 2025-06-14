import 'package:flutter/material.dart';
import 'package:prueba_tecnica/router/paths/routes.dart';
import 'package:prueba_tecnica/router/routes/public_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba tecnica',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: generatePublicRoutes,
    );
  }
}
