import 'package:flutter/material.dart';
import 'package:flutter_app/screens/ExamplesScreen.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
      ),
      body: _buildScreenWidget(),
    );
  }

  Widget _buildScreenWidget() {
    return Container(
      width: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          goBackButton(),
          SizedBox(
            height: 20,
          ),
          removeAllButton(),
        ],
      ),
    );
  }

  Widget goBackButton() {
    return RaisedButton(
      onPressed: goBack,
      child: Text('back Screen 1'),
    );
  }

  Widget removeAllButton() {
    return RaisedButton(
      onPressed: removeAll,
      child: Text('Remove All'),
    );
  }

  //TODO: all class methods and utils

  void goBack() {
    Get.back();
  }

  void removeAll() {
    Get.offAll(ExamplesScreen());
  }
}
