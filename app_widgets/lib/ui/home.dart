import "package:flutter/material.dart";

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepOrangeAccent,
            // width: 192.0,
            // height: 97.0,
            // margin: EdgeInsets.all(50),
            // margin: EdgeInsets.only(left: 50.0),
            child: Text("Pizzas",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 80.0,
                    decoration: TextDecoration.none,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w700))));
  }
}
