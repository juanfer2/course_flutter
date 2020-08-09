import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final List<String> listOptions;
  const ListItemWidget({Key key, this.listOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _createItems(),
    );
  }

  List<Widget> _createItems() {
    var newList = <Widget>[];
    if (listOptions != null) {
      newList = listOptions.map((item) {
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(item),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.account_box),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(),
          ],
        );
      }).toList();
    }
    return newList;
  }
}
