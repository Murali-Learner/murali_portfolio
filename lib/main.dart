import 'package:flutter/material.dart';
import 'package:SaiMurali/controllers/home_controller.dart';
import 'package:SaiMurali/utils/app_theme.dart';
import 'package:SaiMurali/views/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeController>(
        create: (context) => HomeController(),
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Sai Murali',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.theme,
            home: const HomeView(),
          );
        });
  }
}
