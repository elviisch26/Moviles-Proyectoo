import 'package:flutter/material.dart';
import 'package:proyecto/screens/category_details_screen.dart';
import 'package:proyecto/widgets/category_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sándwich Delicias Variadas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Título del negocio y pequeña descripción
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors
                    .blue, // Puedes ajustar el color según tus preferencias
                borderRadius: BorderRadius.circular(15.0), // Bordes redondeados
              ),
              child: Center(
                child: Text(
                  'Sándwich Delicias Variadas',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors
                        .white, // Puedes ajustar el color según tus preferencias
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Explora el mundo del sabor con Sándwich Delicias Variadas! Desde clásicos reconfortantes hasta creaciones audaces, ofrecemos una experiencia única para los amantes de los sabores. ¡Sumérgete en nuestro menú diverso y descubre la magia entre dos rebanadas!',
              style: TextStyle(
                fontSize: 16,
                color: Colors
                    .grey, // Puedes ajustar el color según tus preferencias
              ),
            ),
            SizedBox(height: 20), // Espaciado entre el texto y las categorías
            CategoryItem(
              categoryName: 'Clasicos',
              imageName: 'logo.png',
              onTap: () {
                navigateToCategoryDetails(context, 'Clasicos');
              },
            ),
            CategoryItem(
              categoryName: 'Premiun',
              imageName: 'logo.jpeg',
              onTap: () {
                navigateToCategoryDetails(context, 'Premiun');
              },
            ),
            CategoryItem(
              categoryName: 'Bebidas',
              imageName: 'logo.jpeg',
              onTap: () {
                navigateToCategoryDetails(context, 'Bebidas');
              },
            ),
          ],
        ),
      ),
    );
  }

  void navigateToCategoryDetails(BuildContext context, String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryDetailsScreen(categoryName: category, categoryImage: '',),
      ),
    );
  }
}