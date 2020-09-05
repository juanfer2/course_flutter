import 'package:flutter/material.dart';

import 'package:components_app/src/screens/animated_container_page.dart';
import 'package:components_app/src/screens/input_page.dart';
import 'package:components_app/src/screens/alert_page.dart';
import 'package:components_app/src/screens/avatar_page.dart';
import 'package:components_app/src/screens/home_page.dart';
import 'package:components_app/src/screens/card_page.dart';
import 'package:components_app/src/screens/slider_page.dart';
import 'package:components_app/src/screens/list_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated_container': (BuildContext context) => AnimatedContainerPage(),
    'input': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListPage(),
  };
}
