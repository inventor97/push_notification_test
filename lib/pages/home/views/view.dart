import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controllers/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(onPressed: controller.showNotification, child: const Text("Notification")),
      ),
    );
  }
}
