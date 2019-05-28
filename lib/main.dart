import 'package:flutter/material.dart';

// import './pages/auth.dart';
import './pages/member_admin.dart';
import './pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AuthPage(),
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/admin': (BuildContext context) => MemberAdmin(),
      },
    );
  }
}
