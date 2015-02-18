library formatters;

import 'package:boilerplate/formatters/capitalize.dart' as capitalize;

import 'package:angular/angular.dart' as ng;

class FormattersMod extends ng.Module {
  FormattersMod() {
    this.bind(capitalize.CapitalizeForm);
  }
}
