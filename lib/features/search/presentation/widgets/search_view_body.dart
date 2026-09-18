import 'package:bookly_app/core/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Column(
        children: [
          CustomTextField(),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SearchListView();
              },
            ),
          ),
        ],
      ),
    );
  }
}
