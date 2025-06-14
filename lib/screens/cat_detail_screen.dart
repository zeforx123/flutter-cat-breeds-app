import 'package:flutter/material.dart';
import 'package:prueba_tecnica/models/cat_model.dart';

class CatDetailScreen extends StatelessWidget {
  final CatModel cat;

  const CatDetailScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalle del gato"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (cat.imageUrl != null)
              Center(
                child: Image.network(
                  cat.imageUrl!,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 16),
            Text('Nombre: ${cat.name}'),
            const SizedBox(height: 8),
            if (cat.description != null)
              Text(
                'Descripción:\n${cat.description!}',
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 8),
            if (cat.temperament != null)
              Text('Temperamento: ${cat.temperament}'),
            const SizedBox(height: 8),
            if (cat.intelligence != null)
              Text('Nivel de inteligencia: ${cat.intelligence}/5'),
            const SizedBox(height: 8),
            Text('País de origen: ${cat.origin}'),
          ],
        ),
      ),
    );
  }
}
