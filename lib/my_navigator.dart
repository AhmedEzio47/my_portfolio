import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'my_home_page.dart';

class MyNavigator {
  late VxNavigator navigator;
  MyNavigator() {
    navigator = VxNavigator(
      notFoundPage: (uri, params) => MaterialPage(
        key: ValueKey('not-found-page'),
        child: Builder(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('(404)Page not found'),
            ),
          ),
        ),
      ),
      observers: [MyObserver()],

      /// Use VxRoutePage for transition
      routes: {
        '/': (uri, params) => MaterialPage(child: MyHomePage()),

        /// Transition example
        // "/screen2": (uri, param) => VxRoutePage(
        //     child: Screen2(),
        //     pageName: "screen2",
        //     transition: (animation, child) => ScaleTransition(
        //           alignment: Alignment.bottomLeft,
        //           scale: Tween(
        //             begin: 0.0,
        //             end: 1.0,
        //           ).animate(
        //             CurvedAnimation(
        //               parent: animation,
        //               curve: Curves.easeInOut,
        //             ),
        //           ),
        //           child: child,
        //         )),
      },
    );
  }
}

// First way to monitor changes in the routing stack:
class MyObserver extends VxObserver {
  @override
  void didChangeRoute(Uri route, Page page, String pushOrPop) {
    //print("${myNavigator.navigator.currentConfiguration?.path} - $pushOrPop");
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    //print('Pushed a route: ${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    //print('Popped a route:${route.settings.name}');
  }
}
