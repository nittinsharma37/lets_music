import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  @override
  _TipCalculatorState createState() => new _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Tip Calculator"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(start : 12.0),
                      child: Icon(
                        Icons.attach_money,
                        size: 30.0,
                      ),
                    ),
                    labelText: "Enter amount",
                    labelStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    )
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Tip :"),
                LinearProgressIndicator(
                  
                ),           
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Tip amount :"),              
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Total amount :"),              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
