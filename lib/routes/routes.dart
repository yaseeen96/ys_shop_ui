import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/home_page.dart';
import 'package:e_commerce_app/pages/item_page.dart';
import 'package:flutter/material.dart';

final routes = {
  "/": (context) => const HomePage(),
  "cartPage": (context) => const CartPage(),
  "itemPage": (context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, int>;
    return ItemPage(
      imageIndex: args["imageIndex"] ?? 1,
    );
  },
};
