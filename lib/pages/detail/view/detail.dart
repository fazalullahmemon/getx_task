import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_task/pages/home/controller/home_controller.dart';
import 'package:getx_task/pages/home/view/home.dart';
import 'package:getx_task/service/api_service.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        leading: IconButton(
            onPressed: () {
              print(apiService.fetchText());
              print('Count: ${homeController.count}');

              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
