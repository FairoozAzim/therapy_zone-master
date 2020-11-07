import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:therapy_zone/pages/home/home_page.dart';

class Talk extends StatefulWidget {
  @override
  _TalkState createState() => _TalkState();
}

class _TalkState extends State<Talk> {
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
                  image: AssetImage('assets/talktofriend.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 500.0, 30.0, 0.0),
            child: Text('Talking to a close friend or family always helps. They can help you to throw away the unnecessary burden you are carrying for a long time. If '
                'you can\'t find anyone to talk to, see a therapist.',
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
