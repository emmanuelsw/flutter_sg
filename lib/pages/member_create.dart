import 'package:flutter/material.dart';

class MemberCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MemberCreatePageState();
  }
}

class _MemberCreatePageState extends State<MemberCreatePage> {
  String titleValue, descriptionValue;
  double heightValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, right: 10.0, left: 10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              hasFloatingPlaceholder: false,
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: new BorderRadius.circular(5.0),
              ),
              labelText: 'Name'
            ),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          TextField(
            maxLines: 3,
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              hasFloatingPlaceholder: false,
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: new BorderRadius.circular(5.0),
              ),
              labelText: 'Description'
            ),
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          TextField(
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              hasFloatingPlaceholder: false,
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: new BorderRadius.circular(5.0),
              ),
              labelText: 'Height'
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                heightValue = double.parse(value);
              });
            },
          ),
          Padding(padding: EdgeInsets.all(3.0)),
          RaisedButton.icon(
            icon: Icon(Icons.save, size: 15.0),
            color: Colors.teal,
            textColor: Colors.white,
            label: Text('Save'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
