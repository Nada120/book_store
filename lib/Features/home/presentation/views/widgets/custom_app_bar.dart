import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 6),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'BOOK_STORE',
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                // TODO SEARCH FUNCTION
              },
              icon: const Icon(
                Icons.search,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
