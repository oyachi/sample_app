import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image(
          image: AssetImage('assets/images/sale_banner.jpg'),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          padding: EdgeInsets.all(10.0),
          height: 65.0,
          width: MediaQuery.of(context).size.width * 0.7,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Bargain Detail',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20.0,),
              Container(
                width: 60.0,
                child: FlatButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () => print('Sale details'),
                  color: Colors.orange,
                  child: Icon(
                    Icons.arrow_forward,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}