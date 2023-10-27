import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
    );
  }
}

