import 'package:flutter/material.dart';
import 'package:prueba_tecnica/models/cat_model.dart';
import 'package:prueba_tecnica/screens/widgets/cat_list_item_view.dart';

class CatListView extends StatelessWidget {
  final List<CatModel> cats;

  const CatListView({super.key, required this.cats});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cats.length,
      itemBuilder: (context, index) {
        final cat = cats[index];
        return CatListItemView(cat: cat);
      },
    );
  }
}
