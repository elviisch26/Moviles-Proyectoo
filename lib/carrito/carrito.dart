import 'package:flutter/material.dart';
import 'package:proyecto/models/Item.dart';
import 'package:proyecto/models/pedido.dart';

class Carrito extends ChangeNotifier{
  Map<String, Item> _items = {};
  Map<String, Item> get items {
    return {..._items};
  }

  int get numeroItems {
    return _items.length;
  }

  double get subtotal{
    var total = 0.0;
    items.forEach((key, elementos)=> total += elementos.precio * elementos.cantidad);
    return total;
  }

  double get impuesto{
    var total = 0.0;
    total = this.subtotal * 0.12;
    return total;
  }

  double get total{
    var total = 0.0;
    total = this.subtotal + 0.12;
    return total;
  }

  void agregarItem(String id, String nombre, double precio, String unidad, String imagen, int cantidad)
  {
    if(_items.containsKey(id)){
    _items.update(id, (old) =>Item(
      id: old.id,
      nombre: old.nombre,
      precio: old.precio,
      unidad: old.unidad,
      imagen: old.imagen,
      cantidad: old.cantidad));
    }else{
      _items.putIfAbsent(id, () => Item(
        id: id,
        nombre: nombre,
        precio: precio,
        unidad: unidad,
        imagen: imagen,
        cantidad: cantidad));
    }
  }

void removerItem(String id){
  _items.remove(id);
  }

void incrementarCantidadItem(String id){
  _items.update(id, (old) => Item(
    id: old.id,
    nombre: old.nombre,
    precio: old.precio,
    unidad: old.unidad,
    imagen: old.imagen,
    cantidad: old.cantidad + 1));  
  }
  void decrementarCantidadItem(String id){
  if(!_items.containsKey(id)){
    return;
  }

  if(_items[id]!.cantidad > 1){
    _items.update(id, (old) => Item(
    id: old.id,
    nombre: old.nombre,
    precio: old.precio,
    unidad: old.unidad,
    imagen: old.imagen,
    cantidad: old.cantidad - 1));
    }else{
    _items.remove(id);
    }
  }
  void removeCarrito(){
    _items={};
  }






}