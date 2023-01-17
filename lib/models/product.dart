import 'package:get/get.dart';

class Product {
  final int id;
  final String productName;
  final String productImages;
  final String productDescription;
  final double price;

  Product(
      {required this.id,
      required this.productName,
      required this.productImages,
      required this.productDescription,
      required this.price});

  final isFavorite = false.obs;
}
