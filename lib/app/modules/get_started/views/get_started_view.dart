import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/app/styles/app_colors.dart';

import 'package:get/get.dart';

import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              child: Image.asset(
                "assets/images/valo_bg.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: controller.onNextPressed,
                style: ElevatedButton.styleFrom(
                  primary: primaryButton,
                  minimumSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
