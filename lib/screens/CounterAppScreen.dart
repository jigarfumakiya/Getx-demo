import 'package:flutter/material.dart';
import 'package:flutter_app/controller/CounterController.dart';
import 'package:get/get.dart';

class CounterAppScreen extends StatelessWidget {
  //Define Getx controller in your widget
  // final CounterController _controller = new CounterController();
  final CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Container(
        // color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            SizedBox(
              height: 15,
            ),

            Obx(() {
              return Text(
                '${_controller.currentCount}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RawMaterialButton(
                  fillColor: Colors.blue,
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                  onPressed: _controller.increment,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                RawMaterialButton(
                  fillColor: Colors.blue,
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                  onPressed: _controller.decrement,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
