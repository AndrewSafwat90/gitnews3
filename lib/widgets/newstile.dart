import 'package:flutter/material.dart';
import 'package:gitnews3/models/articlemodel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlemodel});
  final ArticleModel articlemodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: articlemodel.image != null
              ? Image.network(
                  articlemodel.image!,
                  height: 200,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Center(
                          child: Text(
                        'Image is not available 😥',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    );
                  },
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Center(
                    child: Image.network(
                        'https://wallpapers.com/images/high/breaking-news-background-1500-x-946-ptptftteduff9krr.webp'),
                  ),
                ),
        ),
        Text(
          articlemodel.title,
          style: TextStyle(fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articlemodel.description ?? '',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
