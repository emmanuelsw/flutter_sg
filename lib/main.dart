import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/home.dart';
import './pages/member_admin.dart';
import './pages/member.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  List<Map<String, dynamic>> _members = [];

  @override
  void initState() {
    super.initState();
    _members.add({
      'title': 'Isono Rinon', 
      'image': 'assets/rinon.jpg',
      'description': 'Isono Rinon (磯野莉音) is a Japanese singer and model. She was the 5th Student Council President, a former member of Sakura Gakuin and its sub-units Kagaku Kyumei Kiko LOGICA? and The Wrestling Club. On April 30th, Rinon\'s contract under the agency Amuse has ended.',
      'height': 1.72
    });
  }

  void _addMember(Map<String, dynamic> member) {
    setState(() {
      _members.add(member);
    });
  }

  void _deleteMember(int index) {
    setState(() {
      _members.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/members': (BuildContext context) => HomePage(_members),
        '/admin': (BuildContext context) => MemberAdmin(_addMember, _deleteMember, _members),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') return null;
        if (pathElements[1] == 'member') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>
              MemberPage(_members[index]),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(_members),
        );
      },
    );
  }
}
