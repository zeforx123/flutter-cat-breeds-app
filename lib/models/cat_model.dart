class CatModel {
  final String name;
  final String? imageUrl;
  final String origin;
  final String? description;
  final String? temperament;
  final int? intelligence;

  CatModel({
    required this.name,
    this.imageUrl,
    required this.origin,
    this.description,
    this.temperament,
    this.intelligence,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) {
    return CatModel(
      name: json['name'],
      imageUrl: json['image']?['url'], // NO ENCONTRE EL CAMPO DE LA IMAGEN
      origin: json['origin'] ?? 'Desconocido',
      description: json['description'],
      temperament: json['temperament'],
      intelligence: json['intelligence'],
    );
  }
}
