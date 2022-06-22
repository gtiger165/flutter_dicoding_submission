import 'package:flutter_dicoding_submission/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_dicoding_submission/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

class GetStartedController extends GetxController {
  void onNextPressed() => Get.off(() => HomeView(), binding: HomeBinding());
}
