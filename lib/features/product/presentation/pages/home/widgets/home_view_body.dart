import 'package:flutter/material.dart';

import '../../../../../../core/widgets/product_list.dart';
import 'build_product_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.transparent,
              child: GridView.count(
                childAspectRatio: 1 / 1.6,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 1.0,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                    productList.length,
                        (index) =>
                        buildProductItem(productList[index],context)),
              ),
            ),
          ],
        ),),
      ),
    );
  }
}
