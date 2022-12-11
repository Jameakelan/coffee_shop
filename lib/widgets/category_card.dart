import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final String imageURL;
  final String title;

  const CategoryCard({
    Key? key,
    required this.imageURL,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageURL,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
