import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:exemplo_modular/app/modules/home/teste/teste_controller.dart';
import 'package:exemplo_modular/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  // TesteController teste;
  //
  setUp(() {
    //     teste = HomeModule.to.get<TesteController>();
  });

  group('TesteController Test', () {
    //   test("First Test", () {
    //     expect(teste, isInstanceOf<TesteController>());
    //   });

    //   test("Set Value", () {
    //     expect(teste.value, equals(0));
    //     teste.increment();
    //     expect(teste.value, equals(1));
    //   });
  });
}
