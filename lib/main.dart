import 'package:book_store/Features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';

void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Store',
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: backGroundColor,
      ),
      home: const SplashView(),
    );
  }
}
