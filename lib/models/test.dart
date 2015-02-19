library test_mod;

import 'package:boilerplate/model.dart' as mdl;

import 'package:angular/angular.dart' show Injectable;
import 'package:angular/angular.dart' as ng;

@Injectable()
class Test extends mdl.Model {
  @mdl.Attribute('id')
  String id;

  @mdl.Attribute('name')
  String name;

  @mdl.Validator('name')
  void nameValidator(val) {
    if (val == null || val == '') {
      throw new mdl.Invalid('empty', 'Name cannot be empty');
    }
  }

  Test(ng.Http http) : super(http);
}
