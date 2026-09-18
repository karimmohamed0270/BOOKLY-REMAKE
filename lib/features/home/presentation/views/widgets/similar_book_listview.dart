import 'package:bookly_app/features/home/presentation/views/widgets/CustomFeaturedBookImage.dart';
import 'package:flutter/material.dart';

class SimilarBookListview extends StatelessWidget {
  const SimilarBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomFeaturedBookImage();
          },
        ),
      ),
    );
  }
}
