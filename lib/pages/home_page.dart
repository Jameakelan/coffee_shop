import 'package:coffee_shop/widgets/category_card.dart';
import 'package:coffee_shop/widgets/product_card.dart';
import 'package:coffee_shop/widgets/section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Chris Evans",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.brown),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.brown,
                    )),
              ),
              Section(
                title: "Categories",
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      imageURL:
                          "https://cdn1.th.orstatic.com/userphoto/photo/1/UG/0060LKC78DDFA45FC720D3px.jpg",
                      title: "Coffee",
                    ),
                    CategoryCard(
                      imageURL:
                          "https://www.acouplecooks.com/wp-content/uploads/2021/02/Painkiller-Cocktail-008.jpg",
                      title: "Drinks",
                    ),
                    CategoryCard(
                      imageURL:
                          "https://sallysbakingaddiction.com/wp-content/uploads/2013/04/triple-chocolate-cake-4.jpg",
                      title: "Cake",
                    )
                  ],
                ),
              ),
              Section(
                title: "Recommended for you",
              ),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      imageURL:
                          'https://cdn.pixabay.com/photo/2019/10/15/01/26/latte-4550334_1280.jpg',
                      name: "Latte",
                      price: 40,
                      isFavorite: true,
                    ),
                    ProductCard(
                      imageURL:
                          'https://coffeeaffection.com/wp-content/uploads/2020/01/how-to-make-a-latte-at-home.jpg',
                      name: "Latte",
                      price: 40,
                    ),
                    ProductCard(
                      imageURL:
                          'https://perfectdailygrind.com/wp-content/uploads/2019/11/Cappuccino-1.png',
                      name: "Cappuccino",
                      price: 40,
                    )
                  ],
                ),
              ),
              Section(
                title: "Drinks",
              ),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      imageURL:
                      'https://cdn.pixabay.com/photo/2019/10/15/01/26/latte-4550334_1280.jpg',
                      name: "Latte",
                      price: 40,
                      isFavorite: true,
                    ),
                    ProductCard(
                      imageURL:
                      'https://coffeeaffection.com/wp-content/uploads/2020/01/how-to-make-a-latte-at-home.jpg',
                      name: "Latte",
                      price: 40,
                    ),
                    ProductCard(
                      imageURL:
                      'https://perfectdailygrind.com/wp-content/uploads/2019/11/Cappuccino-1.png',
                      name: "Cappuccino",
                      price: 40,
                    )
                  ],
                ),
              ),
              Section(
                title: "Cake",
              ),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      imageURL:
                      'https://cdn.pixabay.com/photo/2019/10/15/01/26/latte-4550334_1280.jpg',
                      name: "Latte",
                      price: 40,
                      isFavorite: true,
                    ),
                    ProductCard(
                      imageURL:
                      'https://coffeeaffection.com/wp-content/uploads/2020/01/how-to-make-a-latte-at-home.jpg',
                      name: "Latte",
                      price: 40,
                    ),
                    ProductCard(
                      imageURL:
                      'https://perfectdailygrind.com/wp-content/uploads/2019/11/Cappuccino-1.png',
                      name: "Cappuccino",
                      price: 40,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
