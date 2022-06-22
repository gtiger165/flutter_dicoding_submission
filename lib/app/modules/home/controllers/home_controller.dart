import 'dart:developer';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/app/data/models/agent.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController searchTextController = TextEditingController();
  final String _searchTagDebouncer = 'searchTextController';
  final Agent agent = Agent();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    EasyDebounce.cancel(_searchTagDebouncer);
  }

  void onSearchTextChanged(String value) {
    EasyDebounce.debounce(
      _searchTagDebouncer,
      Duration(milliseconds: 2000),
      () => log("onSearchTextChanged : $value"),
    );
  }
}
