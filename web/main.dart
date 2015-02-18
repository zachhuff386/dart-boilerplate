library boilerplate;

import 'package:boilerplate/routers/routers.dart' as routers;
import 'package:boilerplate/collections/collections.dart' as collections;
import 'package:boilerplate/components/components.dart' as components;
import 'package:boilerplate/decorators/decorators.dart' as decorators;
import 'package:boilerplate/formatters/formatters.dart' as formatters;
import 'package:boilerplate/models/models.dart' as models;
import 'package:boilerplate/logger.dart' as logger;

import 'package:angular/application_factory.dart' as appfactory;
import 'package:angular/animate/module.dart' as animate;

void main() {
  logger.setup();
  var app = appfactory.applicationFactory()
    .addModule(new routers.RoutersMod())
    .addModule(new collections.CollectionsMod())
    .addModule(new components.ComponentsMod())
    .addModule(new decorators.DecoratorsMod())
    .addModule(new formatters.FormattersMod())
    .addModule(new models.ModelsMod())
    .addModule(new animate.AnimationModule())
    .run();
}
