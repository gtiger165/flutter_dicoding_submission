import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/app/modules/home/controllers/home_controller.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.controller,
    this.hintText = "Search Agents",
  }) : super(key: key);

  final HomeController controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    var hintStyle = TextStyle(
      fontFamily: 'Poppins',
      color: Color(0xFFCFCFCF),
      fontWeight: FontWeight.w500,
    );
    var textStyle = TextStyle(
      fontFamily: 'Poppins',
      color: Color(0xFFCFCFCF),
      fontWeight: FontWeight.w500,
    );
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
      child: TextFormField(
        controller: controller.searchTextController,
        onChanged: controller.onSearchTextChanged,
        obscureText: false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          filled: true,
          fillColor: Color(0xFF585858),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
        ),
        style: textStyle,
      ),
    );
  }
}
