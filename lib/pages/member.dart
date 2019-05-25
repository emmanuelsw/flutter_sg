import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Member Detail'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Member Page!'),
            RaisedButton(
              child: Text('Back'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
