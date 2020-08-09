import 'package:flutter/material.dart';

class CardDefaultWidget extends StatelessWidget {
  const CardDefaultWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Text this card'),
            subtitle: Text('This is a Description'),
            leading: Icon(
              Icons.photo_album,
              color: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.green),
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
