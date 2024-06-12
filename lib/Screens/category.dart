
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/widget/news_listview_builder.dart';

class CategoryScreens extends StatelessWidget {
  final String category;
  const CategoryScreens({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category)
        ],
      ),
    );
  }
}
