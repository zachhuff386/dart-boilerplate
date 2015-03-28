library tests_col;

import 'package:boilerplate/models/models.dart' as models;
import 'package:boilerplate/collection.dart' as collection;
import 'package:boilerplate/model.dart' as model;

class Tests extends collection.Collection {
  model.Model newModel() {
    return new models.Test();
  }

  collection.Collection newCollection() {
    return new Tests();
  }
}
