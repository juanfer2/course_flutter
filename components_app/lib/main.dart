import 'package:components_app/src/routes/routes_router.dart';
import 'package:flutter/material.dart';

import 'src/screens/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamda: ${settings.name}');

        return MaterialPageRoute(
          builder: (context) => AlertPage(),
        );
      },
    );
  }
}
