import '../../features/product/domain/models/product.dart';
import '../../features/product/domain/models/product_property.dart';
import '../../features/product/domain/models/product_property_and_value.dart';
import '../../features/product/domain/models/product_variation.dart';
List<Product> productList = [
  Product(
    id: 1,
    name: 'Slipper',
    description:
    "Activ is one of the most proprietary brands in the sports fields. We are adhering to be existed as a strong supporter of the various kinds of athletic activities. Not only we became a sponsor of many football teams.",
    brandId: 100503,
    brandName: 'Brand A',
    rating: 4.8,
    price: 39.99,
    variations: [
      ProductVariation(
        id: 1,
        productId: 1,
        price: 35.50,
        quantity: 0,
        inStock: true,
        productVarientImages: [
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/82/712354/1.jpg?8824',
          "https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/82/712354/2.jpg?8824",
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/82/712354/3.jpg?8824',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/82/712354/4.jpg?8824',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: '0xff39acc4'),
          ProductPropertyAndValue(property: 'size', value: 'EU 38'),
          ProductPropertyAndValue(property: 'size', value: 'EU 44'),
          ProductPropertyAndValue(property: 'size', value: 'EU 46'),
          ProductPropertyAndValue(property: 'material', value: 'Rubber'),
          ProductPropertyAndValue(property: 'material', value: 'Plastic'),
          ProductPropertyAndValue(property: 'material', value: 'leather'),
        ],
      ),
      ProductVariation(
        id: 1,
        productId: 1,
        price: 40,
        quantity: 0,
        inStock: true,
        productVarientImages: [
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/92/712354/1.jpg?8824',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/92/712354/2.jpg?8824',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/92/712354/3.jpg?8824',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/92/712354/3.jpg?8824',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: '0xff96ce39'),
          ProductPropertyAndValue(property: 'size', value: 'EU 42'),
          ProductPropertyAndValue(property: 'size', value: 'EU 44'),
          ProductPropertyAndValue(property: 'size', value: 'EU 48'),
          ProductPropertyAndValue(property: 'material', value: 'leather'),
        ],
      ),
      ProductVariation(
        id: 1,
        productId: 1,
        price: 49.99,
        quantity: 0,
        inStock: true,
        productVarientImages: [
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/30/112354/1.jpg?7808',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/30/112354/2.jpg?7808',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/30/112354/2.jpg?7808',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/30/112354/2.jpg?7808',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: '0xffc13d30'),
          ProductPropertyAndValue(property: 'size', value: 'EU 44'),
          ProductPropertyAndValue(property: 'size', value: 'EU 46'),
          ProductPropertyAndValue(property: 'material', value: 'Plastic'),
        ],
      ),
      ProductVariation(
        id: 1,
        productId: 1,
        price: 30,
        quantity: 0,
        inStock: true,
        productVarientImages: [
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/88/012354/1.jpg?7748',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/88/012354/2.jpg?7748',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/88/012354/2.jpg?7748',
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/88/012354/4.jpg?7748',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: '0xff97918d'),
          ProductPropertyAndValue(property: 'size', value: 'EU 34'),
          ProductPropertyAndValue(property: 'size', value: 'EU 36'),
          ProductPropertyAndValue(property: 'material', value: 'Rubber'),
        ],
      ),
    ],
    availableProperties: [
      ProductProperty(name: 'color'),
      ProductProperty(name: 'size'),
      ProductProperty(name: 'price'),
      ProductProperty(name: 'material'),
    ],
  ),

];