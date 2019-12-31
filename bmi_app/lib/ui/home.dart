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
  double inches = 0.0;
  double result = 0.0;
  String _resultReading = "";

  void _calculateBMI(){
    setState(() {
      
      int age = int.parse(_ageController.text);
      double height = double.parse(_heightController.text);
      inches = height * 12;
      double weight = double.parse(_weightController.text);

      if((_ageController.text.isNotEmpty || age > 0) && ((_heightController.text.isNotEmpty || height > 0) && (_weightController.text.isNotEmpty || weight > 0))){
        result = (weight / (inches * inches))*703;

        if(double.parse(result.toStringAsFixed(1)) < 18.5){
          _resultReading = "UnderWeight";
        }else if(double.parse(result.toStringAsFixed(1)) >= 18.5 && result < 25){
          _resultReading = "Great Shape";
        }else if(double.parse(result.toStringAsFixed(1)) >= 25.0 && result < 30){
          _resultReading = "OverWeight";
        }else if(double.parse(result.toStringAsFixed(1)) >= 30.0){
          _resultReading = "Obese";
        }
      }else{
        result = 0.0;
      }
    });
  }

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

                  new Padding(padding: EdgeInsets.all(5.0)),

                  new Container(
                    alignment: Alignment.center,

                    child: new RaisedButton(
                      onPressed: () {
                        debugPrint("Button is clicked");
                        _calculateBMI(); 

                      },
                      color: Colors.pinkAccent,
                      child: new Text("Calculate",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 22.0
                      ),
                     ),
                   ),
                  ),

                  new Padding(padding: EdgeInsets.all(3.0)),
                  
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      new Text("BMI: $result",
                        style: new TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0
                        ),
                      ),

                      new Padding(padding: const EdgeInsets.all(3.0)),

                      new Text("$_resultReading",
                        style: new TextStyle(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          fontSize: 16.0
                        ),
                      )
                    ],
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