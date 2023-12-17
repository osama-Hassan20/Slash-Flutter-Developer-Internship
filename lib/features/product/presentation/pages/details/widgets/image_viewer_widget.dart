import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_flutter_internship/features/product/presentation/manger/product_cubit/cubit.dart';
import 'package:slash_flutter_internship/features/product/presentation/manger/product_cubit/state.dart';

import '../../../../../../core/constant/color.dart';
import '../../../../domain/models/product.dart';

class ImagesViewerWidget extends StatelessWidget {
  const ImagesViewerWidget({super.key, required this.cubit, required this.product});
  final ProductCubit cubit;
  final Product product;
  @override
  Widget build(BuildContext context) {
    // int selectedImage = 0;
    return BlocBuilder<ProductCubit , ProductState>(
      builder: (context , state){
        return Column(
          children: [
            FanCarouselImageSlider(
              // userCanDrag: false,
              showIndicator: false,
              autoPlayInterval: Duration(seconds: 1),
              expandedImageFitMode: BoxFit.contain,
              initalPageIndex: cubit.selectedImage,
              isClickable: false,
              indicatorActiveColor: const Color(0xffB7EE2E),
              autoPlay: false,
              sliderHeight: 200,
              imagesLink: product
                  .variations[cubit.selectedColorIndex ?? 0]
                  .productVarientImages,
              isAssets: false,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  product.variations[cubit.selectedImage ?? 0].productVarientImages.length,
                      (index) => SmallProductImage(
                    isSelected: index == cubit.selectedImage,
                    press: () {
                      cubit.selectImage(
                        index
                      );
                      print(cubit.selectedImage);
                      // setState(() {
                      //   selectedImage = index;
                      // });
                    },
                    image: product.variations[0].productVarientImages[index],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ) ;
  }
}

class SmallProductImage extends StatefulWidget {
  const SmallProductImage(
      {super.key,
        required this.isSelected,
        required this.press,
        required this.image});

  final bool isSelected;
  final VoidCallback press;
  final String image;

  @override
  State<SmallProductImage> createState() => _SmallProductImageState();
}

class _SmallProductImageState extends State<SmallProductImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(8),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color:  defaultColor.withOpacity(widget.isSelected ? 1 : 0)),
        ),
        child: Image.network(widget.image),
      ),
    );
  }
}