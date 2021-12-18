import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_in_fp/modules/home/views/home_view.dart';
import 'package:recipes_in_fp/modules/root/controllers/root_controller.dart';

class RootView extends GetResponsiveView<RootController> {
  RootView({Key? key}) : super(key: key, alwaysUseBuilder: false);

  // @override
  // Widget phone() =>
  //     Column(children: [Text('hi1'), Text(screen.screenType.toString())]);
  // @override
  // Widget desktop() =>
  //     Column(children: [Text('hi2'), Text(screen.screenType.toString())]);
  // @override
  // Widget tablet() =>
  //     Column(children: [Text('hi3'), Text(screen.screenType.toString())]);
  @override
  Widget builder() {
    // Widget build(BuildContext context) {
    return Scaffold(
        //drawer: DrawerWidget(),
        appBar: AppBar(title: Text('Recipes in FP: ${screen.screenType}')),
        // body: Center(child: HomeView()));
        body: SafeArea(
          child: Center(
            child: Container(
                //padding: const EdgeInsets.all(20),
                constraints: const BoxConstraints(maxWidth: 800),
                child: HomeView()),
          ),
        ));
  }
}
