import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_btn.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // app bar for book detail view
        BookDetailAppBar(),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Image(image: AssetImage(AssetsData.testImage)),
          ),
        ),
        SizedBox(height: 12),
        Text("The Alchemist", style: Styles.textStyle30),
        SizedBox(height: 4),
        Text(
          "by Paulo Coelho",
          style: Styles.textStyle18.copyWith(
            color: Colors.grey.withOpacity(0.4),
          ),
        ),
        SizedBox(height: 12),

        //  rating
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(),
            Text(
              "(2415)",
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
          ],
        ),

        Padding(
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
        ),
      ],
    );
  }
}

class BookDetailAppBar extends StatelessWidget {
  const BookDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
