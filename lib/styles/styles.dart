import 'package:flutter/material.dart';

BoxDecoration outerContainerDecor() {
  return const BoxDecoration(
    color: Color(0xffEDECF2),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(35),
      topRight: Radius.circular(35),
    ),
  );
}
