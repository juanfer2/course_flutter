import 'package:flutter/material.dart';
import './listMenu_widget.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListMenuWidget(
          listOptions: [],
        ),
      ],
    );
  }
}
