import 'package:slash_flutter_internship/features/product/domain/models/product_property_and_value.dart';

class ProductVariation {
  final int id;
  final int productId;
  final num price;
  final int quantity;
  final bool inStock;
  final List<String> productVarientImages;
  final List<ProductPropertyAndValue> productPropertiesValues;

  ProductVariation({
    required this.id,
    required this.productId,
    required this.price,
    required this.quantity,
    required this.inStock,
    required this.productVarientImages,
    required this.productPropertiesValues,
  });
}