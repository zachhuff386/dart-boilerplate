library main_rout;

import 'package:angular/angular.dart' as ng;

MainRout(ng.Router router, ng.RouteViewFactory views) {
  views.configure({
    'root': ng.ngRoute(
      path: '/root',
      view: 'packages/boilerplate/views/root.html',
      defaultRoute: true
    )
  });
}
