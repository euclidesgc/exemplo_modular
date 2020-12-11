import 'register/register_controller.dart';
import 'register/register_page.dart';
import 'teste/teste_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';
import 'teste/teste_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RegisterController,
        $TesteController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter("/teste", child: (_, args) => TestePage()),
        ModularRouter("/register", child: (_, args) => RegisterPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
