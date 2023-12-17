import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:slash_flutter_internship/features/product/presentation/pages/details/product_details_view.dart';

import '../../../../../../core/constant/color.dart';
import '../../../../domain/models/product.dart';


Widget buildProductItem(Product product, BuildContext context) => InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsView(product: product),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: .5,
                  ),
                  color: Colors.white,
                ),
                child: CachedNetworkImage(
                    imageUrl: product.variations[0].productVarientImages[0],
                    imageBuilder: (context, imageProvider) =>
                        Image(image: imageProvider),
                    placeholder: (context, url) => Center(
                      child: LoadingAnimationWidget
                          .staggeredDotsWave(
                        color: defaultColor,
                        size: 50,
                      ),
                    ),
                    errorWidget: (context, url, error) {
                      print(error.toString());
                      return Center(
                        child: LoadingAnimationWidget.staggeredDotsWave(
                          color: defaultColor,
                          size: 50,
                        ),
                      );
                    }),
              ),
            ),
            Expanded(
              child: Container(
                color: defaultColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10, right: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                product.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                            ),

                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                Text('${product.rating}'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                const Text(
                                  'EGP ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '${product.price}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
