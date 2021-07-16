import 'package:flutter/material.dart';
import 'main.dart';

class lastpage extends StatefulWidget {
  int value;
  lastpage({required this.value});

  @override
  _lastpageState createState() => _lastpageState(value);
}

class _lastpageState extends State<lastpage> {

  int value;
  _lastpageState(this.value);

  int _currentSliderValue = 1;

  _feedback(int value) {
    if(value >= 0 && value <= 10)
    {
      return Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          'We are sorry for your inconvenience',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: 30.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    if (value >= 11 && value <= 20) {
      return Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          'Hope we serve you better next time',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 30.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    if (value >= 21 && value <= 30) {
      return Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          'We hope you come back next time.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontSize: 30.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:
        Center(
          child: Text(
            'Feedback',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _feedback(value),
          SizedBox(height: 20.0,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
                );
              },
              child: Text(
                'Return to Home Page',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
