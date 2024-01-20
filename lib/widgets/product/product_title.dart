import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 45,
        bottom: 15,
        left: 3,
      ),
      child: Text("Product Title",
          style:
              Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 28)),
    );
  }
}
