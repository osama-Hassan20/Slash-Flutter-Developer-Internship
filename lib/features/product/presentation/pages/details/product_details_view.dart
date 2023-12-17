import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_flutter_internship/features/product/presentation/pages/details/widgets/custom_app_bar.dart';
import 'package:slash_flutter_internship/features/product/presentation/pages/details/widgets/product_details_view_body.dart';

import '../../../../../core/constant/color.dart';
import '../../../domain/models/product.dart';
import '../../manger/product_cubit/cubit.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ProductCubit(),
      child: Scaffold(
        backgroundColor: const Color(0xff0c0c0c),
        appBar: customAppBar(product.rating,context),
        body:  ProductDetailsViewBody(product:product ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: defaultColor,
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart,color: Colors.black,),
          label: const Text('Add to cart',style: TextStyle(
            color: Colors.black
          )),
        ),
      ),
    );
  }
}