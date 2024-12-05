import 'package:flutter/material.dart';

class cart_app_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              //untukmkembali ke layar sebelumnnya
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,
            size: 30,
            color: Colors.black),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Cart",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
  
}