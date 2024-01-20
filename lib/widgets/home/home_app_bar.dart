import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color(0xff3c53a5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "YS SHOP",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Spacer(),
          Badge(
            backgroundColor: Colors.red,
            textColor: Colors.white,
            label: const Text(
              "3",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xff3c53a5),
                size: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}
