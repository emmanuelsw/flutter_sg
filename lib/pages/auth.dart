import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80.0, right: 15.0, left: 15.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/logo.png', scale: 7.0),
                  SizedBox(height: 6.0),
                  Text(
                    '『 Sakura List 』',
                    style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.pink[600]),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 14.0),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                hasFloatingPlaceholder: false,
                fillColor: Colors.grey[300],
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                labelText: 'Email',
              ),
              onChanged: (String value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              style: TextStyle(fontSize: 14.0),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                hasFloatingPlaceholder: false,
                fillColor: Colors.grey[300],
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                labelText: 'Password',
              ),
              onChanged: (String value) {
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                fillColor: Colors.teal,
                textStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Login'),
                    Icon(Icons.navigate_next),
                  ],
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/members');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
