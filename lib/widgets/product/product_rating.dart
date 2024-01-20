import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemSize: 20,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
      itemBuilder: (context, index) => Icon(
        Icons.favorite,
        color: Theme.of(context).primaryColor,
      ),
      onRatingUpdate: (value) {},
    );
  }
}
