import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  CategoryDetailsScreen({required this.categoryName, required this.categoryImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' $categoryName'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen de la categoría
            Image.network(categoryImage, height: 200, width: 200),
            SizedBox(height: 16.0),
            // Nombre de la categoría
            Text(
              categoryName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            // Puedes agregar más detalles aquí según sea necesario
          ],
        ),
      ),
    );
  }
}
