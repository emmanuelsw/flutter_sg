import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _email, _password;
  bool _acceptTerms = false;

  Widget loginLogo() {
    return Column(
      children: <Widget>[
        Image.asset('assets/logo.png', scale: 7.0),
        SizedBox(height: 6.0),
        Text(
          '『 Sakura List 』',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
            color: Colors.pink[600],
          ),
        )
      ],
    );
  }

  Widget loginTextField(field, label) {
    return TextField(
      obscureText: label == 'Password' ? true : false,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
        labelText: label,
        contentPadding: EdgeInsets.all(15.0),
        hasFloatingPlaceholder: false,
        fillColor: Colors.grey[300],
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
      onChanged: (String value) {
        setState(() {
          field = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 80.0, right: 15.0, left: 15.0),
            child: Column(
              children: <Widget>[
                loginLogo(),
                SizedBox(height: 40.0),
                loginTextField(_email, 'Email'),
                SizedBox(height: 10.0),
                loginTextField(_password, 'Password'),
                SwitchListTile(
                  activeColor: Colors.teal,
                  title: Text(
                    'Accept Terms', 
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                  ),
                  value: _acceptTerms,
                  onChanged: (bool value) {
                    setState(() {
                      _acceptTerms = value;
                    });
                  },
                ),
                SizedBox(height: 8.0),
                SizedBox(
                  width: double.infinity,
                  child: RawMaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    fillColor: Colors.teal,
                    textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
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
        ],
      ),
    );
  }
}
