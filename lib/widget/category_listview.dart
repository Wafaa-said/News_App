import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({Key? key}) : super(key: key);

  final List<CategoryModel> categories = const[
    CategoryModel(image: 'images/Sports.jpg', name: 'Sports'),

    CategoryModel(image: 'images/Business.jpg', name: 'Business'),

    CategoryModel(image: 'images/Health.jpg', name: 'Health'),

    CategoryModel(image: 'images/Science.jpg', name: 'Science'),

    CategoryModel(image: 'images/Tech.jpg', name: 'Technology'),

    CategoryModel(image: 'images/entertainment.jpg', name: 'entertainment'),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder:(context , index){
              return CategoryCard(category: categories[index],);
            } ),
      );
  }
}
