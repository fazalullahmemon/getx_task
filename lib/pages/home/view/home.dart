import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_task/pages/detail/view/detail.dart';
import 'package:getx_task/pages/home/binding/home_binding.dart';
import 'package:getx_task/pages/home/controller/home_controller.dart';
import 'package:getx_task/service/api_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Task',
      getPages: [
        GetPage(name: '/home', page: () => Home(), binding: HomeBinding()),
        GetPage(name: '/details', page: () => DetailScreen()),
      ],
      initialRoute: '/home',
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeState = Get.find<HomeController>();
    final homeBinding = HomeBinding();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '${homeState.count}',
                style: TextStyle(fontSize: 36),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                homeState.increment();
              },
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/details');
              },
              child: Text('Go to Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
