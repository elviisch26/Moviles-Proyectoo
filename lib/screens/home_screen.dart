import 'package:flutter/material.dart';
import 'package:proyecto/screens/category_details_screen.dart';
import 'package:proyecto/widgets/category_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Bocados Raps',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.0,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            Text(
              'Explora el mundo del sabor con Bocados Raps! Desde clásicos reconfortantes hasta creaciones audaces, ofrecemos una experiencia única para los amantes de los sabores. ¡Sumérgete en nuestro menú diverso y descubre la magia entre dos rebanadas!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
                fontStyle: FontStyle.italic,
                height: 1.5,
                
              ),
            ),
            SizedBox(height: 20),
            CategoryItem(
              categoryName: 'Clásicos',
              imageName: 'clasi.png',
              onTap: () {
                navigateToCategoryDetails(context, 'Clásicos');
              },
            ),
            CategoryItem(
              categoryName: 'Premium',
              imageName: 'premiun.png',
              onTap: () {
                navigateToCategoryDetails(context, 'Premium');
              },
            ),
            CategoryItem(
              categoryName: 'Bebidas',
              imageName: 'bebidas.png',
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
        builder: (context) =>
            CategoryDetailsScreen(categoryName: category, categoryImage: ''),
      ),
    );
  }
}
