import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_flutter_internship/features/product/presentation/manger/product_cubit/cubit.dart';

import '../../../../domain/models/product_property_and_value.dart';


Widget buildColorVariation(
    List<ProductPropertyAndValue> propertyValues,
    String propertyName,
    context,
    Function(int) onTapCallback,
    ) {
  var cubit = BlocProvider.of<ProductCubit>(context);

  bool hasColorProperty = propertyValues.isNotEmpty;

  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (hasColorProperty)
          Text(
            '$propertyName:',
            style: const TextStyle(color: Colors.white,fontSize: 18),
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
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: index == cubit.selectedColorIndex
                          ? const Color(0xffF5F5F7)
                          :  Colors.transparent,
                    ),
                    color: hasColorProperty
                        ? cubit.getColorFromHex(
                      int.parse(propertyValues[index].value),
                    )
                        : Colors
                        .transparent,
                  ),
                ),
              ),
          ],
        ),
      ],
    ),
  );
}