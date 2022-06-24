import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/app/modules/home/components/agents_item.dart';
import 'package:flutter_dicoding_submission/app/modules/home/components/search_textfield.dart';
import 'package:flutter_dicoding_submission/app/styles/app_colors.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        centerTitle: true,
        backgroundColor: primaryBackground,
        elevation: 0.0,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Column(
          children: [
            SearchTextField(controller: controller),
            Flexible(
              child: Obx(() => ListView.builder(
                    itemCount: controller.agentsCount,
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        AgentsItem(agent: controller.agents[index]),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
