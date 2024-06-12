import 'package:flutter/material.dart';
import 'package:news/Screens/category.dart';
import 'package:news/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.category}) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context){
                return CategoryScreens(category: category.name,);
              })
        );
      },
      child: Padding(padding: const EdgeInsets.only( right: 5, left: 5),
        child:  Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.image)
            ),
            // color: Colors.orange,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              category.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),);
  }
}
