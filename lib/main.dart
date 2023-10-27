import 'package:book_store/Features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BookStore(),
  ));
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Store',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backGroundColor,
      ),
      initialRoute: '/',
      home: const SplashView(),
    );
  }
}
