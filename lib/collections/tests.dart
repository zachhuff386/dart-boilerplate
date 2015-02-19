library tests_col;

import 'package:boilerplate/exceptions.dart';

import 'package:boilerplate/collection.dart' as collec;
import 'package:boilerplate/models/test.dart' as tst;

import 'package:angular/angular.dart' show Injectable;
import 'package:angular/angular.dart' as ng;

@Injectable()
class Tests extends collec.Collection {
  Type model = tst.Test;

  Tests(ng.Http http) : super(http);
}
