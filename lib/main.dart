import 'package:flutter/material.dart';

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
  List<Map<String, String>> _members = [];

  @override
  void initState() {
    super.initState();
    _members.add({'title': 'Isono Rinon', 'image': 'assets/rinon.jpg'});
  }

  void _addMember(Map<String, String> member) {
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
        '/': (BuildContext context) => HomePage(_members, _addMember, _deleteMember),
        '/admin': (BuildContext context) => MemberAdmin(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') return null;
        if (pathElements[1] == 'member') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>
              MemberPage(_members[index]['title'], _members[index]['image']),
          );
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        MaterialPageRoute(
          builder: (BuildContext context) =>
            HomePage(_members, _addMember, _deleteMember),
        );
      },
    );
  }
}
