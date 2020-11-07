import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:therapy_zone/pages/home/home_page.dart';

class Meditate extends StatefulWidget {
  @override
  _MeditateState createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
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
                  image: AssetImage('assets/unwind_meditation.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 500.0, 30.0, 0.0),
            child: Text('In mindfulness meditation, you broaden your conscious awareness. You focus on what you experience during meditation, such as the flow of your breath. You can observe your thoughts and emotions, but let them pass without judgment.',
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
