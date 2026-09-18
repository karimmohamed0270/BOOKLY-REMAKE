import 'package:bookly_app/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class BookRatingBtn extends StatelessWidget {
  const BookRatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomBtn(
              text: "19.99EGP",
              btnColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
          ),
          Expanded(
            child: CustomBtn(
              text: "Free Preview",
              btnColor: Colors.orange,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
