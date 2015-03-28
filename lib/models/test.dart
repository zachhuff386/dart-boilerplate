library test_mod;

import 'package:boilerplate/model.dart' as model;

class Test extends model.Model {
  String id;

  String name;
  void nameValidator(val) {
    if (val == null || val == '') {
      throw new model.Invalid('empty', 'Name cannot be empty');
    }
  }

  model.Model newModel() {
    return new Test();
  }

  Map<String, Function> get getters {
    return {
      'id': () => this.id,
      'name': () => this.name,
    };
  }

  Map<String, Function> get setters {
    return {
      'id': (x) => this.id = x,
      'name': (x) => this.name = x,
    };
  }

  Map<String, Function> get validators {
    return {
      'name': this.nameValidator,
    };
  }
}
