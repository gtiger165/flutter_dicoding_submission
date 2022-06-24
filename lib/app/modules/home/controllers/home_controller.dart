import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/app/constants/agents_constant.dart';
import 'package:flutter_dicoding_submission/app/data/models/agent.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController searchTextController = TextEditingController();
  final String _searchTagDebouncer = 'searchTextController';
  final Agent agent = Agent();

  RxList<Agent> agents = <Agent>[].obs;

  List<Agent> searchedAgents = [];

  int get agentsCount => agents.length;

  @override
  void onInit() {
    super.onInit();
    agents.value = kAgents;
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
      Duration(milliseconds: 1000),
      () {
        if (value.isEmpty) {
          agents.value = kAgents;
          return;
        }

        searchedAgents = kAgents
            .where((agent) =>
                "${agent.name}".contains(RegExp(value, caseSensitive: false)))
            .toList();
        agents.value = searchedAgents;
      },
    );
  }
}
