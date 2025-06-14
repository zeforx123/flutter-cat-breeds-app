import 'package:flutter/material.dart';
import 'package:prueba_tecnica/models/cat_model.dart';
import 'package:prueba_tecnica/router/paths/routes.dart';
import 'package:prueba_tecnica/router/route_page_arguments.dart';

class CatListItem extends StatelessWidget {
  final CatModel cat;

  const CatListItem({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cat.name),
      subtitle: Text(cat.origin),
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.catDetailScreen,
          arguments: CatDetailScreenArguments(cat: cat),
        );
      },
    );
  }
}
