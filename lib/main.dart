import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _members = ['Isono Rinon'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Sakura List'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton.icon(
                onPressed: () {
                  setState(() {
                    _members.add('Tensai');
                  });
                },
                icon: Icon(Icons.add),
                label: Text('Add Member'),
                color: Colors.teal,
                textColor: Colors.white,
              ),
            ),
            Column(
              children: _members
                .map((element) => Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/rinon.jpg'),
                        Text(element)
                      ],
                    ),
                  ))
                .toList(),
            )
          ],
        ),
      ),
    );
  }
}
