import 'package:flutter/material.dart';
/* models */
import '../models/product.dart';

class ProductCarousel extends StatelessWidget {
  final String title;
  final List<Product> products;

  ProductCarousel({
    required this.title,
    required this.products,
  });

  _buildProductCard(int index) {
    return Container(
      width: 150.0,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(products[index].imageUrl),
                height: 100.0,
                width: 150.0,
              ),
            ),
            ListTile(
              title: Text(
                products[index].name,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '\$${products[index].price.toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 250.0,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildProductCard(index);
            },
          ),
        ),
      ],
    );
  }
}