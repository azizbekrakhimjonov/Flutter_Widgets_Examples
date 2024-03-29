import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

void main() {
  Get.put<MyDrawerController>(MyDrawerController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends GetView<MyDrawerController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        menuScreen: MenuScreen(),
        mainScreen: MainScreen(),
        borderRadius: 24.0,
        showShadow: true,
        angle: -12.0,
        drawerShadowsBackgroundColor: Colors.grey,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
      ),
    );
  }
}

class MenuScreen extends GetView<MyDrawerController> {
  const MenuScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}

class MainScreen extends GetView<MyDrawerController> {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: ElevatedButton(
          onPressed: controller.toggleDrawer,
          child: Text("Toggle Drawer"),
        ),
      ),
    );
  }
}

class MyDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();
  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}