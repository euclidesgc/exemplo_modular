import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'teste_controller.g.dart';

@Injectable()
class TesteController = _TesteControllerBase with _$TesteController;

abstract class _TesteControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
