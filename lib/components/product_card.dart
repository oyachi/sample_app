import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            title: Text(
              'Recommended for you',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Image(
            image: AssetImage('assets/images/monitor.jpg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('More'),
                onPressed: () => print('more'),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}