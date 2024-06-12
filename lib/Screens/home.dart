import 'package:flutter/material.dart';
import 'package:news/widget/category_listview.dart';
import 'package:news/widget/news_listview_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        centerTitle: true ,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        )
      ),
      body:   const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView(),),
            SliverToBoxAdapter(child: SizedBox(height: 32,),),
            NewsListViewBuilder(category: 'general',)
          ],
        )
      )
    );
  }
}
