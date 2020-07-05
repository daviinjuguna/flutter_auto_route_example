import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';

import '../pages/initial_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

export 'package:auto_route/auto_route.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: InitialPage, initial: true),
    CupertinoRoute(page: SecondPage, fullscreenDialog: true),
    CustomRoute<bool>(page: ThirdPage, transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 200),
  ]
)

class $Router {
  
}