import 'package:course_flutter/pages/home.dart';
import 'package:flutter/material.dart';

class MemberAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Menu'),
            ),
            ListTile(
              title: Text('All members'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Member Admin'),
      ),
      body: Center(
        child: Text('Member Admin page'),
      ),
    );
  }
}
