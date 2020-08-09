import 'package:components_app/src/widgets/boxWidgets/box_default_widget.dart';
import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {
  const CardImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BoxDefaultWidget(
      children: Container(
        // clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage(
                  'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover,
            ),
            // Image(
            //   image: NetworkImage(
            //       'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
            // ),
            ListTile(
              title: Text('Text this card with image'),
              subtitle: Text('This is a Description'),
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
      ),
    );
  }
}
