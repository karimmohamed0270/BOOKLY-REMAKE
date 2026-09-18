import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_detail_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_ratingBtn.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_book_listview.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              // upper section

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
              BookRatingBtn(),

              // lower section
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SimilarBookListview(),
            ],
          ),
        ),
      ],
    );
  }
}
