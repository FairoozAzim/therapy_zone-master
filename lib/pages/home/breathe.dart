import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:therapy_zone/pages/home/home_page.dart';

class Breathe extends StatefulWidget {
  @override
  _BreatheState createState() => _BreatheState();
}

class _BreatheState extends State<Breathe> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
                 image: AssetImage('assets/breathe.gif'),
                 fit: BoxFit.cover,
               ),
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 500.0, 10.0, 0.0),
            child: Text('Sit or lie down for a moment. Just breathe and focus on your breathing. Let go of every negative thinking,'
                'just for a moment. Feel any better?',
               style: TextStyle(
                 fontSize: 18.0,
               ),
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
