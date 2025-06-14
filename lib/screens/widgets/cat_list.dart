import 'package:flutter/material.dart';
import 'package:prueba_tecnica/models/cat_model.dart';
import 'package:prueba_tecnica/screens/widgets/cat_list_item.dart';

class CatList extends StatelessWidget {
  final List<CatModel> cats;

  const CatList({super.key, required this.cats});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cats.length,
      itemBuilder: (context, index) {
        final cat = cats[index];
        return CatListItem(cat: cat);
      },
    );
  }
}
