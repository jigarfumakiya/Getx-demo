import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Screen2.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: _buildScreenWidget(),
    );
  }

  Widget _buildScreenWidget() {
    return Container(
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          screen2Button(),
          SizedBox(
            height: 10,
          ),
          dialogsButton(),
          SizedBox(
            height: 10,
          ),
          snackbarButton(),
        ],
      ),
    );
  }

  Widget screen2Button() {
    return RaisedButton(
      onPressed: gotoScreen2,
      child: Text('Goto Screen 2'),
    );
  }

  Widget dialogsButton() {
    return RaisedButton(
      onPressed: dialogs,
      child: Text('Dialogs'),
    );
  }

  Widget snackbarButton() {
    return RaisedButton(
      onPressed: snackbarUtils,
      child: Text('Snackbar'),
    );
  }

  //TODO: class methods and utils

  void gotoScreen2() {
    Get.to(Screen2());
  }

  void dialogs() {
    Get.dialog(AlertDialog(
      title: Text('Hello Dialogs'),
      backgroundColor: Colors.white,
      elevation: 5,
      content: Text('Dialogs using GetX'),
      actions: [
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text('Yay'))
      ],
    ));
  }

  void snackbarUtils() {
    Get.snackbar('Snackbar', 'Snackbar using Getx',
        snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.black54);
  }
}
