import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/theme/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "YS Shop",
      onGenerateRoute: (settings) {
        return null;
      },
      theme: theme,
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
