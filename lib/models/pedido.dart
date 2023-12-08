class Pedido {
  final int id;
  final String nombre;
  final double precio;
  final String imagen;
  final String descripcion;
  
  // Usar un valor por defecto para hacer el parámetro opcional
  const Pedido({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.imagen,
    required this.descripcion,
  });
}

final clasicos = [
  Pedido(
    id: 1,
    nombre: "Sanguchito de Pollo",
    precio: 6.25,
    imagen: "assets/sam1.jpeg",
    descripcion: "Pan, pollo, lechuga, tomate, mayonesa, mostaza, ketchup, queso"
  ),
  Pedido(
    id: 2,
    nombre: "Sanguchito de Carne",
    precio: 6.25,
    imagen: "assets/sam2.jpeg",
    descripcion: "Pan, carne, lechuga, tomate, mayonesa, mostaza, ketchup, queso"
  ),
  Pedido(
    id: 3,
    nombre: "Sanguchito de Jamón",
    precio: 6.25,
    imagen: "assets/sam3.jpeg",
    descripcion: "Pan, jamón, lechuga, tomate, mayonesa, mostaza, ketchup, queso"
  ),
];

final premium = [
  Pedido(
    id: 4,
    nombre: "Sanguchito de Pollo",
    precio: 6.25,
    imagen: "assets/images/sanguchito1.jpg",
    descripcion: "Pan, pollo, lechuga, tomate, mayonesa, mostaza, ketchup, queso"
  ),
  Pedido(
    id: 5,
    nombre: "Sanguchito de Carne",
    precio: 6.25,
    imagen: "assets/images/sanguchito2.jpg",
    descripcion: "Pan, carne, lechuga, tomate, mayonesa, mostaza, ketchup, queso"
  ),
  Pedido(
    id: 6,
    nombre: "Sanguchito de Jamón",
    precio: 6.25,
    imagen: "assets/images/sanguchito3.jpg",
    descripcion: "Pan, jamón, lechuga, tomate, mayonesa, mostaza, ketchup, queso"
  ),
];

final bebidas = [
  Pedido(
    id: 7,
    nombre: "Coca Cola",
    precio: 1.50,
    imagen: "assets/images/bebida1.jpg",
    descripcion: "Coca Cola 500ml"
  ),
  Pedido(
    id: 8,
    nombre: "Inca Kola",
    precio: 1.50,
    imagen: "assets/images/bebida2.jpg",
    descripcion: "Inca Kola 500ml"
  ),
  Pedido(
    id: 9,
    nombre: "Sprite",
    precio: 1.50,
    imagen: "assets/images/bebida3.jpg",
    descripcion: "Sprite 500ml"
  ),
];
