import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final listOptions = ['uno!!!1', 'dos', 'tres', 'cuatro', 'cinco'];
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _createItems(),
    );
  }

  List<Widget> _createItems() {
    List<Widget> newList = new List<Widget>();
    for (String item in listOptions) {
      final tempWidget = ListTile(title: Text(item));
      newList..add(tempWidget)..add(Divider());
    }
    return newList;
  }
}
