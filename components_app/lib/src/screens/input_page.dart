import 'package:components_app/src/widgets/DropDown/dropDown_widget.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _password = '';
  String _date = '';
  String _selectedOption = 'Volar';

  final List<String> menuOptions = [
    'Volar',
    'Rayos X',
    'Super Aliento',
    'Super Fuerza'
  ];

  TextEditingController _inputDateController = new TextEditingController();

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
          SizedBox(
            height: 15.0,
          ),
          _createInput(),
          Divider(),
          _emailInput(),
          Divider(),
          _passwordInput(),
          Divider(),
          _dateInput(context),
          Divider(),
          DropdownButton(
            value: _selectedOption,
            items: getOptionsMenu(),
            onChanged: (opt) {
              setState(() {
                _selectedOption = opt;
              });
            },
          ),
          ListTile(
            title: Text('My name is: $_name'),
            subtitle: Text('Email: $_email'),
            trailing: Text(_selectedOption),
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
        counter: Text('letras ${_name != null ? _name.length : 0}'),
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

  Widget _emailInput() {
    return TextField(
      onChanged: (value) => _setEmail(value),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        counter: Text('letras ${_email != null ? _email.length : 0}'),
        hintText: 'Email',
        labelText: 'Email label',
        helperText: '',
        suffixIcon: Icon(
          Icons.alternate_email,
        ),
        icon: Icon(Icons.email),
      ),
    );
  }

  Widget _passwordInput() {
    return TextField(
      obscureText: true,
      onChanged: (value) => _setPassword(value),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        counter: Text('letras ${_password != null ? _password.length : 0}'),
        hintText: 'Password',
        labelText: 'Password label',
        helperText: '',
        suffixIcon: Icon(
          Icons.lock,
        ),
        icon: Icon(Icons.lock),
      ),
    );
  }

  Widget _dateInput(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      autofocus: false,
      controller: _inputDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Date',
        labelText: 'Date label',
        helperText: '',
        suffixIcon: Icon(
          Icons.calendar_today,
        ),
        icon: Icon(Icons.calendar_today),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1980),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));
    if (picked != null) {
      _setDate(picked.toString());
      _inputDateController.text = _date;
    }
  }

  List<DropdownMenuItem<String>> getOptionsMenu() {
    List<DropdownMenuItem<String>> list = new List();
    menuOptions.forEach((poder) {
      list.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return list;
  }

  void _setName(String value) {
    setState(() {
      _name = value;
    });
  }

  void _setEmail(String value) {
    setState(() {
      _email = value;
    });
  }

  void _setPassword(String value) {
    setState(() {
      _password = value;
    });
  }

  void _setDate(String value) {
    setState(() {
      _date = value;
    });
  }
}
