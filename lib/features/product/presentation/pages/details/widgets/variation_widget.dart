import 'package:flutter/material.dart';
import 'package:slash_flutter_internship/features/product/presentation/pages/details/widgets/size_widget.dart';
import '../../../../domain/models/product_property.dart';
import '../../../../domain/models/product_variation.dart';
import 'color_widget.dart';
import 'material_widget.dart';

Widget buildVariationTile(
    BuildContext context,
    cubit,
    List<ProductVariation> variations,
    List<ProductProperty> availableProperties,
    product,
    ) {
  var displayedProperties = <String>{};

  return ListTile(
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!displayedProperties.contains('color'))
          buildColorVariation(
            cubit.getAllPropertiesByType(
              product.variations,
              'color',
            ),
            'Color',
            context,
                (index) {
              cubit.handleColorTap(index);
            },
          ),
        if (!displayedProperties.contains('size'))
          buildSizeVariation(
            product.variations[cubit.selectedColorIndex ?? 0]
                .productPropertiesValues
                .where((property) => property.property == 'size')
                .toList(),
            cubit,
            cubit.handleSizeTap,
          ),
        if (!displayedProperties.contains('material'))
          buildMaterialVariation(
            product.variations[cubit.selectedColorIndex ?? 0]
                .productPropertiesValues
                .where((property) => property.property == 'material')
                .toList(),
            cubit,
            cubit.handleMaterialTap,
          ),
      ],
    ),
  );
}