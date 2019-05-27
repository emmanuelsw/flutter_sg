import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  final String title, imageUrl;

  MemberPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageUrl),
          Container(
            padding: EdgeInsets.only(top: 14.0, bottom: 10.0),
            child: Text(
              title,
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
