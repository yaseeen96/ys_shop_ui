import 'package:clippy_flutter/arc.dart';
import 'package:THE_YS_SHOP/widgets/items/item_appbar.dart';
import 'package:THE_YS_SHOP/widgets/items/item_bottom_navbar.dart';
import 'package:THE_YS_SHOP/widgets/items/product_image.dart';
import 'package:THE_YS_SHOP/widgets/product/product_description.dart';
import 'package:THE_YS_SHOP/widgets/product/product_metrics.dart';
import 'package:THE_YS_SHOP/widgets/shared/product_quantity.dart';
import 'package:THE_YS_SHOP/widgets/product/product_rating.dart';
import 'package:THE_YS_SHOP/widgets/product/product_title.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required this.imageIndex});
  final int imageIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const ItemAppBar(),
          ProductImage(imageIndex: imageIndex),
          Arc(
              arcType: ArcType.CONVEY,
              edge: Edge.TOP,
              height: 30,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductTitle(),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductRating(),
                          ProductQuantity(),
                        ],
                      ),
                    ),
                    const ProductDescription(),
                    ProductMetrics(),
                    ProductMetrics(
                      isColor: true,
                    )
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
