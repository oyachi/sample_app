import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkResponse(
              onTap: () => print('Microphone'),
              child: Icon(
                Icons.mic,
                size: 30.0,
                color: Colors.black38,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 30,
            offset: const Offset(0, 14),
          )
        ],
      ),
    );
  }
}