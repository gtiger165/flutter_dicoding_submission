import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({Key? key, this.imageUrl}) : super(key: key);

  final String? imageUrl;

  String get _placeholder => Platform.isAndroid
      ? circularProgressIndicator
      : cupertinoActivityIndicator;

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: _placeholder,
      image: "$imageUrl",
      imageErrorBuilder: (context, object, st) =>
          Image.asset("assets/icons/valo_icon.jpeg"),
    );
  }
}
