import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // app bar for book detail view
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // close button
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close, color: Colors.white),
              ),

              // search icon button
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
