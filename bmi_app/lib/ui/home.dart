import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
      
  }
}
    
class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),

      backgroundColor: Colors.white70,

      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(3.0),
          children: <Widget>[
            new Image.asset("images/bmilogo.png",
              height: 133.0,
              width: 200.0,
            )
          ],
        ),
      ),


    );
  }

}