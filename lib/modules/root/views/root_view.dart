import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:get/get.dart';
import 'package:recipes_in_fp/modules/home/views/home_view.dart';
import 'package:recipes_in_fp/modules/root/controllers/root_controller.dart';
import 'package:recipes_in_fp/widgets/foo.dart';
import 'package:recipes_in_fp/widgets/side_menu.dart';

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
        drawer: SideMenu(key: this.key),
        appBar: AppBar(title: Text('Recipes in FP: ${screen.screenType}')),
        // body: Center(child: HomeView()));
        body: SafeArea(
          child: Center(
            child: Container(
                padding: const EdgeInsets.all(20),
                constraints: const BoxConstraints(maxWidth: 1000),
                //child: const Foo(5)),
                child: HomeView()),
          ),
        ));
  }
}
