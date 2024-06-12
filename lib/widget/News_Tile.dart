import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.articleModel}) : super(key: key);

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.image?? '',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          )),
        const SizedBox(
          height: 12,
        ),
        Text(
            articleModel.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(articleModel.subTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        )

      ],
      
    );
  }
}
