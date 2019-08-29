import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.black87,
              child: Text('SA'),
              radius: 25,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i2.wp.com/metalinjection.net/wp-content/uploads/2014/07/Slipknot-new-logo.jpg?fit=400%2C400&ssl=1'),
              radius: 25,
            ),
          )
        ],
      ),
      body: Text('Avatar page'),
    );
  }
}
