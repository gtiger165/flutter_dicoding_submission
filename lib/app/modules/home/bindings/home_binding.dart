import 'package:get/get.dart';

import 'package:flutter_dicoding_submission/app/modules/home/controllers/agentitem_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentitemController>(
      () => AgentitemController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
