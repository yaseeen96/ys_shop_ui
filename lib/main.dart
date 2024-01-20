import 'package:THE_YS_SHOP/routes/routes.dart';
import 'package:THE_YS_SHOP/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(const Duration(seconds: 3), () {
    FlutterNativeSplash.remove();
  });
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
