import 'package:flutter/material.dart';

import '../../../../domain/models/product_property_and_value.dart';


Widget buildSizeVariation(
    List<ProductPropertyAndValue> propertyValues,
    cubit,
    Function(int) onTapCallback,
    ) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Size:',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int index = 0; index < propertyValues.length; index++)
              GestureDetector(
                onTap: () {
                  onTapCallback(index);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: index == cubit.selectedSizeIndex
                        ? const Color(0xffB8F02F)
                        : const Color(0xff1D1D1F),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    propertyValues[index].value,
                    style: TextStyle(
                        color: index == cubit.selectedSizeIndex
                            ? Colors.black
                            : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
          ],
        ),
      ],
    ),
  );
}