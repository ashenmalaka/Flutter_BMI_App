import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
      
  }
}
    
class HomeState extends State<Home> {

  final TextEditingController _ageController = new TextEditingController();
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();

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
                  new TextField(
                    controller: _ageController,
                    decoration: new InputDecoration(
                      labelText: "Age",
                      icon: new Icon(Icons.person)
                    ),
                  ),

                  new TextField(
                    controller: _heightController,
                    decoration: new InputDecoration(
                      labelText: "Height in feet",
                      icon: new Icon(Icons.insert_chart)
                    ),
                  ),

                  new TextField(
                    controller: _weightController,
                    decoration: new InputDecoration(
                      labelText: "Weight in lb",
                      icon: new Icon(Icons.line_weight)
                    ),
                  ),

                  new Padding(padding: EdgeInsets.all(18.0)),

                  new Container(
                    alignment: Alignment.center,

                    child: new RaisedButton(
                      onPressed: () {

                      },
                      color: Colors.pinkAccent,
                      child: new Text("Calculate",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 22.0
                      ),
                     ),
                   )
                  )
                ],
              ),
            )

          ],
        ),
      ),


    );
  }

}