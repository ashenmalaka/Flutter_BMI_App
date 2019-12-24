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

      backgroundColor: Colors.white,

      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(3.0),
          children: <Widget>[
            new Image.asset("images/bmilogo.png",
              height: 133.0,
              width: 200.0,
            ),

            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              height: 300.0,
              width: 380.0,
              color: Colors.grey.shade300,
              child: new Column(
                children: <Widget>[

                ],
              ),
            )


          ],
        ),
      ),


    );
  }

}