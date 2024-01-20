// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ProductMetrics extends StatelessWidget {
  ProductMetrics({
    super.key,
    this.isColor = false,
  });
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
  ];

  final bool isColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        children: [
          Text(isColor ? "Colors" : "Size:",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 18)),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              for (int i = isColor ? 0 : 5; i < (isColor ? 5 : 10); i++)
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: isColor ? colors[i] : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                        ),
                      ]),
                  child: isColor
                      ? null
                      : Text("$i",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 18)),
                )
            ],
          )
        ],
      ),
    );
  }
}
