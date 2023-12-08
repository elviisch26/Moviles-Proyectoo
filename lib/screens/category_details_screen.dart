import 'package:flutter/material.dart';
import 'package:proyecto/models/pedido.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final String categoryName;
  final String categoryImage;

  CategoryDetailsScreen(
      {required this.categoryName, required this.categoryImage});

  @override
  Widget build(BuildContext context) {
    List<Pedido> products;

    // Cargar productos según la categoría
    switch (categoryName) {
      case 'Clasicos':
        products = clasicos;
        break;
      case 'Premiun':
        products = premium;
        break;
      case 'Bebidas':
        products = bebidas;
        break;
      default:
        products = [];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(' $categoryName'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Productos en la categoría $categoryName:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Muestra la lista de productos
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text(
                      product.nombre,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Precio: \$${product.precio.toStringAsFixed(2)}'),
                        Text('Descripción: ${product.descripcion}'),
                        // Agrega más detalles del producto según tus necesidades
                      ],
                    ),
                    // Agrega lógica para manejar la selección del producto
                    onTap: () {
                      // Puedes navegar a la pantalla de detalles del producto
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

