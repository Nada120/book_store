import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  final List<String> imagePaths;
  const FeaturedBooksListView({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) =>
            CustomListViewItem(imagePath: imagePaths[index]),
      ),
    );
  }
}
