import 'package:THE_YS_SHOP/styles/styles.dart';
import 'package:THE_YS_SHOP/widgets/cart/cart_appbar.dart';
import 'package:THE_YS_SHOP/widgets/cart/cart_bottom_nav_bar.dart';
import 'package:THE_YS_SHOP/widgets/cart/cart_item_samples.dart';
import 'package:THE_YS_SHOP/widgets/cart/coupon_code_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(
              top: 15,
            ),
            decoration: outerContainerDecor(),
            child: const Column(
              children: [
                CartItemSamples(),
                CouponCodeWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CartBottomNavBar(),
    );
  }
}
