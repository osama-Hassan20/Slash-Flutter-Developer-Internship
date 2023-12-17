import 'package:slash_flutter_internship/features/product/domain/models/product_property.dart';
import 'package:slash_flutter_internship/features/product/domain/models/product_variation.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final int brandId;
  final String? brandName;
  final double rating , price;
  final List<ProductVariation> variations;
  final List<ProductProperty> availableProperties;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.brandId,
    this.brandName,
    required this.rating,
    required this.price,
    required this.variations,
    required this.availableProperties,
  });
}