library boilerplate;

import 'package:boilerplate/routers/routers.dart' as routers;
import 'package:boilerplate/components/components.dart' as components;
import 'package:boilerplate/decorators/decorators.dart' as decorators;
import 'package:boilerplate/formatters/formatters.dart' as formatters;
import 'package:boilerplate/logger.dart' as logger;
import 'package:boilerplate/app.dart' as app;

import 'package:angular/application_factory.dart' as appfactory;
import 'package:angular/animate/module.dart' as animate;

void main() {
  logger.setup();
  app.root = appfactory.applicationFactory()
    .addModule(new routers.RoutersMod())
    .addModule(new components.ComponentsMod())
    .addModule(new decorators.DecoratorsMod())
    .addModule(new formatters.FormattersMod())
    .addModule(new animate.AnimationModule())
    .run();
}
