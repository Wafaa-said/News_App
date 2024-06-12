import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'News_Tile.dart';


class NewsListView extends StatelessWidget{

  final List<ArticleModel> articles ;

  NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
                (context, index) {
              return  Padding(
                  padding: const EdgeInsets.only(bottom:20),
                  child: NewsTile(
                    articleModel: articles[index],
                  )
              );
            })
    );
  }
}

