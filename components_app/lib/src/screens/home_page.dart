import 'package:flutter/material.dart';

import 'package:components_app/src/widgets/listItems_widget.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: ListItemWidget(),
    );
  }
}
