import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  final String title, imageUrl;

  MemberPage(this.title, this.imageUrl);

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
              padding: EdgeInsets.only(top: 14.0, bottom: 10.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
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
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
