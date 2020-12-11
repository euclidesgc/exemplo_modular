import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  
  @override
  void initState() {
    // TODO: implement initState
    print('>>>>>>>>>>>   Home page  instanciada!');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('PASSOU AQUI!');

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Observer(builder: (_) {
                print('Passou build observer!');

                return Text(
                  'Você apertou o botão ${controller.value} vezes',
                  style: TextStyle(fontSize: 20),
                );
              }),
              SizedBox(height: 50),
              RaisedButton(
                child: Text("Teste"),
                onPressed: () => Modular.to.pushNamed("/teste"),
              ),
              SizedBox(height: 50),
              RaisedButton(
                child: Text("Register"),
                onPressed: () => Modular.to.pushNamed("/register/id=1"),
              ),
              SizedBox(height: 50),
              RaisedButton(
                child: Text("Dashboard"),
                onPressed: () => Modular.to.pushNamed("/dashboard"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.increment();
            print('PASSOU AQUI 2!');
            print(controller.value);
          },
          child: Icon(Icons.plus_one),
        ));
  }
}
