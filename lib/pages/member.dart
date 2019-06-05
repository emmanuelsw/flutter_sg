import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  final String title, imageUrl;

  MemberPage(this.title, this.imageUrl);

  Future _showWarningDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure?'),
          content: Text('This action cannot be undone!'),
          actions: <Widget>[
            FlatButton(
              child: Text('DISCARD'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('CONTINUE'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              margin: EdgeInsets.only(top: 16.0, bottom: 6.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, fontFamily: 'Cocogoose'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.teal
              ),
              child: Text(
                'Kanagawa, Japan', 
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0),
              ),
            ),
            Container(
              child: RaisedButton.icon(
                icon: Icon(
                  Icons.delete,
                  size: 20.0,
                ),
                label: Text('Delete'),
                color: Colors.red[800],
                textColor: Colors.white,
                onPressed: () => _showWarningDialog(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
