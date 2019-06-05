import 'package:flutter/material.dart';

class MemberCreatePage extends StatefulWidget {
  final Function addMember;

  MemberCreatePage(this.addMember);

  @override
  State<StatefulWidget> createState() {
    return _MemberCreatePageState();
  }
}

class _MemberCreatePageState extends State<MemberCreatePage> {
  String _titleValue, _descriptionValue;
  double _heightValue;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, right: 10.0, left: 10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              labelText: 'Name',
              hasFloatingPlaceholder: false,
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5.0),
              ),
  
            ),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          SizedBox(height: 10.0),
          TextField(
            maxLines: 3,
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              labelText: 'Description',
              hasFloatingPlaceholder: false,
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onChanged: (String value) {
              setState(() {
                _descriptionValue = value;
              });
            },
          ),
          SizedBox(height: 10.0),
          TextField(
            style: TextStyle(fontSize: 14.0),
            decoration: InputDecoration(
              labelText: 'Height',
              hasFloatingPlaceholder: false,
              fillColor: Colors.grey[300],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _heightValue = double.parse(value);
              });
            },
          ),
          SizedBox(height: 5.0),
          RaisedButton.icon(
            icon: Icon(Icons.save, size: 15.0),
            color: Colors.teal,
            textColor: Colors.white,
            label: Text('Save'),
            onPressed: () {
              final Map<String, dynamic> member = {
                'title': _titleValue, 
                'description': _descriptionValue, 
                'height': _heightValue,
                'image': 'assets/yui.jpg'
              };
              widget.addMember(member);
              Navigator.pushReplacementNamed(context, '/members');
            },
          ),
        ],
      ),
    );
  }
}
