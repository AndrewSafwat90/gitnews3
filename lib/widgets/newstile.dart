import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://wallpapers.com/images/high/breaking-news-background-1500-x-946-ptptftteduff9krr.webp',
            height: 200,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Text('Failed to load Image');
            },
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'data',
          style: TextStyle(fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'data',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
