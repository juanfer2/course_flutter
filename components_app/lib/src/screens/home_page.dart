import 'package:components_app/src/widgets/menuWidgets/listMenu_widget.dart';
import 'package:flutter/material.dart';

import 'package:components_app/src/widgets/listWidgets/listItems_widget.dart';
import 'package:components_app/src/widgets/menuWidgets/listMenu_widget.dart';

class HomePage extends StatelessWidget {
  final list = [
    'alskd',
    'asldjflasd',
    'aklsdjfñlaskd',
    'asdlkfjañlsdjfñals',
    'lakjsdñlfajksdlñfjas',
    'aklsdjfñalksdjñlasjkdafñls',
    'lkajdñla',
    'asldkfjañlsd'
  ];
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: ListMenuWidget(
        listOptions: list,
      ),
    );
  }
}
