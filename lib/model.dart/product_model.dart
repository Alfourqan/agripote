import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final double price;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Pomme de terre",
    image: "assets/images/pomme-terre.jpg",
    price: 7.99,
  ),
  Product(
    id: 2,
    title: "Carotte",
    image: "assets/images/produit_2.jpg",
    price: 11.99,
  ),
  Product(
    id: 3,
    title: "Tomate",
    image: "assets/images/produit_3.jpg",
    price: 6.99,
  ),
  Product(
    id: 4,
    title: "KaritÃ©",
    image: "assets/images/produit4.jpg",
    price: 3.99,
  ),
  Product(
    id: 5,
    title: "Coco",
    image: "assets/images/produit5.jpg",
    price: 8.99,
  ),
   Product(
    id: 6,
    title: "Gombo",
    image: "assets/images/gombo.jpg",
    price: 8.99,
  ),
   Product(
    id: 7,
    title: "Aubergine",
    image: "assets/images/aubergine.jpg",
    price: 8.99,
  ),
   Product(
    id: 8,
    title: "Choux",
    image: "assets/images/produit8.jpg",
    price: 8.99,
  ),
   Product(
    id: 9,
    title: "Piment",
    image: "assets/images/produit9.jpg",
    price: 8.99,
  ),
];