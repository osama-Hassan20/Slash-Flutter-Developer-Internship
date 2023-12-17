import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_flutter_internship/features/product/presentation/manger/product_cubit/state.dart';

import '../../../domain/models/product.dart';
import '../../../domain/models/product_property.dart';
import '../../../domain/models/product_property_and_value.dart';
import '../../../domain/models/product_variation.dart';


class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());


  // get color from hex
  Color getColorFromHex(int colorValue) {
    try {
      return Color(colorValue);
    } catch (e) {
      return Colors.grey;
    }
  }

  int selectedColorIndex = 0;
  int selectedSizeIndex = 0;
  int selectedMaterialIndex = 0;
  int itemCount = 1;
  void countUp(){
    ++itemCount;
    emit(CountUpState());
  }
  void countDown(){
    --itemCount;
    emit(CountDownState());
  }

  int selectedImage = 0;
  void selectImage(indexx){
    selectedImage = indexx;
    emit(SelectImageState());
  }

  void handleColorTap(int index) {
    selectedColorIndex = index;
    emit(SelectColorState());
    // Handle the tap event for the color variation at the specified index
    if (kDebugMode) {
      print('Tapped color at index $index');
    }
  }

  void handleSizeTap(int index) {
    selectedSizeIndex = index;
    emit(SelectSizeState());
    // Handle the tap event for the size variation at the specified index
    if (kDebugMode) {
      print('Tapped size at index $index');
    }
  }

  void handleMaterialTap(int index) {
    selectedMaterialIndex = index;
    emit(SelectMaterialState());
    // Handle the tap event for the material variation at the specified index
    if (kDebugMode) {
      print('Tapped material at index $index');
    }
  }

  List<ProductPropertyAndValue> getAllPropertiesByType(
      List<ProductVariation> variations, String type) {
    List<ProductPropertyAndValue> allProperties = [];
    for (var variation in variations) {
      allProperties.addAll(
        getPropertiesByType(
          variation.productPropertiesValues,
          type,
        ),
      );
    }
    return allProperties;
  }

  List<ProductPropertyAndValue> getPropertiesByType(
      List<ProductPropertyAndValue> properties, String type) {
    return properties.where((pv) => pv.property.toLowerCase() == type).toList();
  }


  int quantity = 0;

  void incrementQuantity() {
    quantity++;
    emit(IncrementQuantityState());
  }

  void decrementQuantity() {
    quantity--;
    emit(DecrementQuantityState());
  }

}