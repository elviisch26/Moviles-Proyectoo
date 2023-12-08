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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                categoryName,
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
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Agrega lógica para manejar el evento del botón "Agregar al Carrito"
                        // Puedes mostrar un SnackBar, agregar el producto a un carrito, etc.
                        // Por ahora, solo imprime un mensaje en la consola.
                        print('Producto agregado al carrito: ${product.nombre}');
                      },
                      child: Text('Agregar al Carrito'),
                    ),
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
