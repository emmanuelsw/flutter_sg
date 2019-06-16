import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  final Map<String, dynamic> _authForm = {
    'email': null,
    'password': null,
    'acceptTerms': true
  };

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget authLogo() {
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

  Widget _emailInput() {
    return TextFormField(
      initialValue: 'test@test.co',
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
        labelText: 'Email',
        contentPadding: EdgeInsets.all(15.0),
        hasFloatingPlaceholder: false,
        fillColor: Colors.grey[300],
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty || !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?").hasMatch(value)) {
          return 'Please enter a valid email.';
        }
      },
      onSaved: (String value) {
        _authForm['email'] = value;
      },
    );
  }

  Widget _passwordInput() {
    return TextFormField(
      initialValue: 'password123',
      obscureText: true,
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
        labelText: 'Password',
        contentPadding: EdgeInsets.all(15.0),
        hasFloatingPlaceholder: false,
        fillColor: Colors.grey[300],
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty || value.length < 8) {
          return 'Password invalid.';
        }
      },
      onSaved: (String value) {
        _authForm['password'] = value;
      },
    );
  }

  Widget _loginSubmitButton() {
    return SizedBox(
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
          if (!_formKey.currentState.validate() || !_authForm['acceptTerms']) return;
          _formKey.currentState.save();
          print(_authForm);
          Navigator.pushReplacementNamed(context, '/members');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 767.0 ? 500.0 : deviceWidth;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: targetWidth,
              padding: EdgeInsets.only(top: 80.0, right: 15.0, left: 15.0, bottom: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    authLogo(),
                    SizedBox(height: 40.0),
                    _emailInput(),
                    SizedBox(height: 10.0),
                    _passwordInput(),
                    SwitchListTile(
                      activeColor: Colors.teal,
                      title: Text(
                        'Accept Terms', 
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
                      ),
                      value: _authForm['acceptTerms'],
                      onChanged: (bool value) {
                        setState(() {
                          _authForm['acceptTerms'] = value;
                        });
                      },
                    ),
                    SizedBox(height: 8.0),
                    _loginSubmitButton(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
