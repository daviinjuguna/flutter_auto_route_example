import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'routes/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: ExtendedNavigator<Router>(
        router: Router(),
      ),
    );
  }
}