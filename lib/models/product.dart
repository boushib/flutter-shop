// ignore_for_file: non_constant_identifier_names
import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String image_url;
  final String category;
  final String brand;
  final int quantity;
  final String created_at;
  final String updated_at;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image_url,
    required this.category,
    required this.brand,
    required this.quantity,
    required this.created_at,
    required this.updated_at,
  });

  factory Product.fromMap(Map<String, dynamic> data) {
    return Product(
      id: data["_id"].toHexString() ?? "",
      title: data["title"] ?? "",
      description: data["description"] ?? "",
      price: (data["price"] ?? 0).toDouble(),
      image_url: data["image_url"] ?? "",
      category: data["category"] ?? "",
      brand: data["brand"] ?? "",
      quantity: data["quantity"] ?? 0,
      created_at: data["created_at"] ?? "",
      updated_at: data["updated_at"] ?? "",
    );
  }
}
