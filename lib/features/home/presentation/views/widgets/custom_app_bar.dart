import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 18),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).go('/search');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
