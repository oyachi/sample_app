import 'package:flutter/material.dart';
/* components */
import '../components/product_card.dart';
import '../components/product_carousel.dart';
import '../components/search_bar.dart';
import '../components/home_banner.dart';
/* models */
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: InkResponse(
            onTap: () => print('Menu'),
            child: Icon(
              Icons.menu,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12.0, right: 20.0),
                child: InkResponse(
                  onTap: () => print('Cart'),
                  child: Icon(
                      Icons.shopping_cart,
                      size: 30.0,
                      color: Colors.black
                  ),
                ),
              ),
              Positioned(
                bottom: 8.0,
                right: 16.0,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          SearchBar(),
          HomeBanner(),
          ProductCarousel(
              title: 'Prime Deals',
              products: products
          ),
          ProductCard(),
        ],
      ),
    );
  }
}