import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text('Member Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/rinon.jpg'),
          Container(
            padding: EdgeInsets.only(top: 14.0, bottom: 10.0),
            child: Text(
              'Isono Rinon (天才)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          Container(
            child: RaisedButton.icon(
              icon: Icon(
                Icons.arrow_back,
                size: 20.0,
              ),
              label: Text('Back'),
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
