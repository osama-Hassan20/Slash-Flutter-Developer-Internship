import 'package:flutter/material.dart';

import '../../../../../../core/constant/color.dart';
import '../../../../domain/models/product.dart';
bool sewMore = false;
class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback? pressOnSeeMore;

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                widget.product.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
              ),
              const Spacer(),
              Text('EGP: ${widget.product.price}',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: defaultColor
              ),),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            widget.product.description,
            maxLines: sewMore?100:3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                sewMore = !sewMore;
              });

            },
            child:  Row(
              children: [
                Text(
                  sewMore?"See Less Detail":"See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: defaultColor),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: defaultColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}