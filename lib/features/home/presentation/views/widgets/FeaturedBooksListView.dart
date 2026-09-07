import 'package:bookly_app/features/home/presentation/views/widgets/CustomFeaturedBookImage.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CustomFeaturedBookImage();
      },
    );
  }
}
