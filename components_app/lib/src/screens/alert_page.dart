import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlerPage'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.green,
          elevation: 1.5,
          child: Text(
            'Show Alert',
            style: TextStyle(color: Colors.white),
          ),
          shape: StadiumBorder(),
          onPressed: () => _showAlert(context),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text('Title'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es un gran contenido genial'),
                SizedBox(
                  height: 10.0,
                ),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.green),
                ),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }
}
