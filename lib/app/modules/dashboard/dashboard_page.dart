import 'package:exemplo_modular/app/modules/dashboard/widgets/custom_label.dart';
import 'package:exemplo_modular/app/shared/widgets/custom_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key key, this.title = "Dashboard"}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState
    extends ModularState<DashboardPage, DashboardController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          CustomLabel(
            label: "Djalma!",
          ),
          SizedBox(height: 16),
          CustomAppButton(
            onPressed: () => print('Custom button!'),
          )
        ],
      ),
    );
  }
}
