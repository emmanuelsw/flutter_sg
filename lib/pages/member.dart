import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  final Map<String, dynamic> member;

  MemberPage(this.member);

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
          title: Text(member['title']),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(member['image']),
            Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 14.0, bottom: 0.0, left: 1.0),
                    child: Text(
                      member['title'],
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, fontFamily: 'Cocogoose'),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.place, size: 14.0, color: Colors.grey,),
                      Text(
                        'Kanagawa, Japan',
                        style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic, fontSize: 13.0),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.0, top: 6.0, right: 16.0, bottom: 10.0),
                    child: Text(
                      member['description'],
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black87)),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8.0),
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.teal
                    ),
                    child: Text(
                      'Height: ${member['height']}', 
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
