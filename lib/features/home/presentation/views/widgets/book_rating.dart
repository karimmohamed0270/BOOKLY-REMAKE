import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 60.0),
      child: const Row(
        children: [
          Icon(Icons.star, color: Colors.yellow, size: 18),
          SizedBox(width: 4),
          Text("4.8", style: Styles.textStyle16),
        ],
      ),
    );
  }
}
