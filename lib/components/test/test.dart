library test_comp;

import 'package:angular/angular.dart' show Component;

@Component(
  selector: 'test',
  templateUrl: 'packages/boilerplate/components/test/test.html',
  cssUrl: 'packages/boilerplate/components/test/test.css'
)
class TestComp {
  String inputValue;
  String commitedInputValue;
  bool showToast;

  void onClick() {
    this.showToast = this.showToast != true;
  }
}
