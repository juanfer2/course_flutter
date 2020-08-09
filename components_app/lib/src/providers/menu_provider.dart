import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];
  _MenuProvider() {
    getDataMenu();
  }

  Future<List<dynamic>> getDataMenu() async {
    final resp = await rootBundle.loadString('data/routes_const.json');
    Map dataMap = json.decode(resp);
    options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
