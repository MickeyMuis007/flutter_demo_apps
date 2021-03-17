import "package:flutter/material.dart";

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepOrangeAccent,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text("Margherita",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.normal))),
                  Expanded(
                      child: Text("Tomato, Mozzarella, Basil",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.normal))),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text("Marinara",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              decoration: TextDecoration.none,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.normal))),
                  Expanded(
                      child: Text("Tomato, Garlic",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.normal))),
                ],
              ),
              PizzaImageWidget(),
              OrderButton()
            ])));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage("assets/images/pizza.png");
    Image image = Image(
      image: pizzaAsset,
      width: 400.0,
      height: 400,
    );
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
        margin: EdgeInsets.only(top: 50),
        child: ElevatedButton(
            child: Text("Order your Pizza!"),
            onPressed: () {
              order(context);
            }));
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
        title: Text("Order Completed"), content: Text("Thanks for your order"));
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
