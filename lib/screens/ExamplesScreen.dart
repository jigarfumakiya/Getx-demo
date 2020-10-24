import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/CounterAppScreen.dart';
import 'package:flutter_app/screens/Navigation.dart';
import 'package:get/get.dart';

class ExamplesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Demo'),
      ),
      body: _buildScreenWidgets(),
    );
  }

  Widget _buildScreenWidgets() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          counterAppButton(),
          SizedBox(height: 30),
          navigationButton(),
          SizedBox(height: 30),
          utilsButton()
        ],
      ),
    );
  }

  Widget counterAppButton() {
    return RaisedButton(
      onPressed: _pushToCounterApp,
      child: Text('Counter App'),
    );
  }

  Widget navigationButton() {
    return RaisedButton(
      onPressed: _pushToNavigation,
      child: Text('Navigation'),
    );
  }

  Widget utilsButton() {
    return RaisedButton(
      onPressed: _pushToCounterApp,
      child: Text('Utils'),
    );
  }

  //TODO: methods and utils

  void _pushToCounterApp() {
    Get.to(CounterAppScreen());
  }
  void _pushToNavigation() {
    Get.to(NavigationScreen(),duration: Duration(milliseconds: 800),transition: Transition.rightToLeft);
  }
}
