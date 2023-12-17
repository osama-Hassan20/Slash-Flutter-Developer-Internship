import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_flutter_internship/features/product/presentation/manger/product_cubit/cubit.dart';
import 'package:slash_flutter_internship/features/product/presentation/pages/details/widgets/product_description.dart';
import 'package:slash_flutter_internship/features/product/presentation/pages/details/widgets/quantity_selector_widget.dart';
import 'package:slash_flutter_internship/features/product/presentation/pages/details/widgets/variation_widget.dart';

import '../../../../domain/models/product.dart';
import '../../../manger/product_cubit/state.dart';
import 'image_viewer_widget.dart';

class ProductDetailsViewBody extends StatelessWidget {
  final Product product;

  const ProductDetailsViewBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ProductCubit>(context);
    cubit.selectedColorIndex = 0;
    cubit.selectedMaterialIndex = 0;
    cubit.selectedSizeIndex = 0;
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ImagesViewerWidget(cubit: cubit,product: product),

                ),
                SliverToBoxAdapter(
                  child: ProductDescription(product: product , pressOnSeeMore: () {}, ),
                ),
                SliverToBoxAdapter(
                  child: buildVariationTile(
                      context,
                      cubit,
                      product.variations,
                      product.availableProperties,
                      product,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 10,),
                ),
                const SliverToBoxAdapter(
                  child: QuantitySelector(),
                ),

                const SliverToBoxAdapter(
                  child:  SizedBox(height: 100,),
                ),



              ]
          ),
        );
      },
    );
  }
}