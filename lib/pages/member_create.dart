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
  final Map<String, dynamic> _formData = {
    'title': null,
    'description': null,
    'height': null,
    'image': 'assets/yui.jpg'
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _titleInput() {
    return TextFormField(
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
      validator: (String value) {
        if (value.isEmpty || value.length < 5) {
          return 'Name is required and should be 5+ characters long.';
        }
      },
      onSaved: (String value) {
        _formData['title'] = value;
      },
    );
  }

  Widget _descriptionInput() {
    return TextFormField(
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
      validator: (String value) {
        if (value.isEmpty || value.length < 10) {
          return 'Description is required and should be 10+ characters long.';
        }
      },
      onSaved: (String value) {
        _formData['description'] = value;
      },
    );
  }

  Widget _heightInput() {
    return TextFormField(
      style: TextStyle(fontSize: 14.0),
      keyboardType: TextInputType.number,
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
      validator: (String value) {
        if (value.isEmpty || !RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$').hasMatch(value)) {
          return 'Height is required and should bea number.';
        }
      },
      onSaved: (String value) {
        _formData['height'] = double.parse(value.replaceFirst(RegExp(r','), '.'));
      },
    );
  }

  void _submitForm() {
    if (!_formKey.currentState.validate()) return;
    _formKey.currentState.save();
    widget.addMember(_formData);
    Navigator.pushReplacementNamed(context, '/members');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, left: 10.0),
      child: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.only(top: 15.0),
          children: <Widget>[
            _titleInput(),
            SizedBox(height: 10.0),
            _descriptionInput(),
            SizedBox(height: 10.0),
            _heightInput(),
            SizedBox(height: 5.0),
            RaisedButton.icon(
              icon: Icon(Icons.save, size: 15.0),
              color: Colors.teal,
              textColor: Colors.white,
              label: Text('Save'),
              onPressed: _submitForm,
            ),
          ],
        ),
      ),
    );
  }
}
