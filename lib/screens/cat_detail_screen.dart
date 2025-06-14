import 'package:flutter/material.dart';
import 'package:prueba_tecnica/router/route_page_arguments.dart';
import 'package:prueba_tecnica/screens/widgets/cat_detail_content.dart';

class CatDetailScreen extends StatelessWidget {
  final CatDetailScreenArguments arguments;

  const CatDetailScreen({
    super.key,
    required this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles del gato"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: CatDetailContent(cat: arguments.cat),
      ),
    );
  }
}
