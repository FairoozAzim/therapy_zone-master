import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:therapy_zone/pages/home/home_page.dart';

class MindShift extends StatefulWidget {
  @override
  _MindShiftState createState() => _MindShiftState();
}

class _MindShiftState extends State<MindShift> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var Textstyle = TextStyle(fontFamily: "FiraSans",fontSize: 18.0,color: Colors.grey[700]);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              height: size.height*.5,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mindshift.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 500.0, 20.0, 0.0),
            child: Text('Sit down and relax. Give all of your thoughts a temporary pause. Think about a happy thought, watch'
                'watch your favourite funny movie or go out and look at nature. For a minute, think about something happy.',
              style: Textstyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(150.0, 640.0, 50.0, 0.0),
            child: RaisedButton(
              onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home())
                );
              },
              child: Text('Done'),
              color: Colors.cyan[600],
              elevation: 8.0,
            ),
          ),
        ],
      ),
    );
  }
}
