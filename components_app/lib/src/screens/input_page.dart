import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 2.0,
        ),
        children: <Widget>[
          _createInput(),
          ListTile(
            title: Text('My name is: $_name'),
          ),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      onChanged: (value) => _setName(value),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        counter: Text('letras ${_name.length}'),
        hintText: 'Name',
        labelText: 'Name label',
        helperText: 'Help Input',
        suffixIcon: Icon(
          Icons.accessibility_new,
        ),
        icon: Icon(Icons.account_balance),
      ),
    );
  }

  void _setName(String value) {
    setState(() {
      _name = value;
    });
  }
}
