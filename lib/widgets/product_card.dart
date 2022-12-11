import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageURL;
  final String name;
  final double price;
  final bool isFavorite;

  const ProductCard({
    Key? key,
    required this.imageURL,
    required this.name,
    required this.price,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 170,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageURL,
                  width: 150,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$price ฿"),
                  Icon(
                    Icons.favorite,
                    color: (isFavorite) ? Colors.red : Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
