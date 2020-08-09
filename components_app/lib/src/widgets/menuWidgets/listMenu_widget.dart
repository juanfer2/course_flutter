import 'package:components_app/src/screens/alert_page.dart';
import 'package:components_app/src/utils/list_icons_util.dart';
import 'package:flutter/material.dart';
import '../../providers/menu_provider.dart';

class ListMenuWidget extends StatelessWidget {
  final List<String> listOptions;
  const ListMenuWidget({Key key, this.listOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _getList(),
    );
  }

  Widget _getList() {
    return FutureBuilder(
      future: menuProvider.getDataMenu(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _createItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _createItems(List<dynamic> data, BuildContext context) {
    final List<Widget> newList = [];
    if (data != null) {
      data.forEach((item) {
        print(item);
        final listTile = ListTile(
          title: Text(item['texto']),
          subtitle: Text('Subtitle'),
          leading: getIcon(item['icon']),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pushNamed(context, item['ruta']);
            // final route = MaterialPageRoute(
            //   builder: (context) => AlertPage(),
            // );

            // Navigator.push(context, route);
          },
        );
        newList..add(listTile)..add(Divider());
      });
    }
    return newList;
  }
}
