import 'package:e_commerce_app/styles/styles.dart';
import 'package:e_commerce_app/widgets/home/categories_widget.dart';
import 'package:e_commerce_app/widgets/home/heading_widget.dart';
import 'package:e_commerce_app/widgets/home/home_app_bar.dart';
import 'package:e_commerce_app/widgets/home/home_bottom_nav_bar.dart';
import 'package:e_commerce_app/widgets/home/search_widget.dart';
import 'package:e_commerce_app/widgets/items/items_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            decoration: outerContainerDecor(),
            child: Column(
              children: [
                const SearchWidget(),
                const HeadingWidget(
                  title: "Categories",
                ),
                CategoriesWidget(),
                const HeadingWidget(title: "Best Selling"),
                const ItemsWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
