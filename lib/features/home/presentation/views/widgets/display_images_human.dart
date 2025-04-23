import 'dart:io';

import 'package:flutter/material.dart';

import '../../../data/models/chat/chat_model.dart';

class DisplayImagesHuman extends StatelessWidget {
  const DisplayImagesHuman({
    super.key,
    required this.model,
  });

  final ChatModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model.images!.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Image.file(
            File(model.images![index]),
            width: 100,
            height: 50,
          ),
        ),
      ),
    );
  }
}
