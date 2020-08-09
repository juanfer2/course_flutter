import 'package:flutter/material.dart';

import 'package:components_app/src/widgets/cardsWidgets/card_default_widget.dart';
import 'package:components_app/src/widgets/cardsWidgets/card_image_widget.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          CardDefaultWidget(),
          CardImageWidget(),
          CardDefaultWidget(),
          CardImageWidget(),
          CardDefaultWidget(),
          CardImageWidget(),
          CardDefaultWidget(),
          CardImageWidget(),
          CardDefaultWidget(),
          CardImageWidget(),
          CardDefaultWidget(),
          CardImageWidget(),
          CardImageWidget(),
          CardImageWidget(),
          CardImageWidget(),
          CardDefaultWidget(),
          CardDefaultWidget(),
          CardDefaultWidget(),
          CardDefaultWidget(),
        ],
      ),
    );
  }
}
