import 'package:flutter/material.dart';
PreferredSizeWidget? customAppBar(
    double rating,
    BuildContext context,
    ){
  return AppBar(
    title: const Text(
      'Product details',
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            padding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child:  Row(
              children: [
                Text(
                  "$rating",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.star,color: Colors.amber,),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}