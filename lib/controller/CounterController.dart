import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counterCount = new RxInt(0);

  int  get currentCount => counterCount.value;

  //RxInt is same as
  //   var counterCount=0.obs;


  void increment() {
    counterCount++;
  }

  void decrement() {
    counterCount--;
  }
}
