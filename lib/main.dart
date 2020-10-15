import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage  extends StatefulWidget{
    @override
    _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage>{
    int leftdiceNumber= 1;
    int rightdiceNumber=1;

    void changeDiceFace() {
        setState(() {
            leftdiceNumber = Random().nextInt(6) + 1;
            rightdiceNumber = Random().nextInt(6) + 1;
        });//setstate
    }
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Row(
                children: <Widget>[
                    Expanded(
                        child: FlatButton(
                            onPressed: () {
                                changeDiceFace();
                            },
                            child: Image(
                                image: AssetImage('images/dice$leftdiceNumber.png')
                            ),//image
                        ),//flatbutton
                    ),//expanded
                    Expanded(
                        child: FlatButton(
                            onPressed: () {
                                changeDiceFace();
                            },
                            child: Image(
                                image: AssetImage('images/dice$rightdiceNumber.png')
                            ),//image
                        ),//flatbutton
                    ),//expanded
                ],//widget
            ),//row
        );//center 
    }

}

