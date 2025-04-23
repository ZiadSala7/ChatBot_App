import 'dart:io';

import 'package:flutter/material.dart';
import '../../managers/image_cubit/image_cubit.dart';

class FoundImagesDisplay extends StatelessWidget {
  const FoundImagesDisplay({
    super.key,
    required this.cubit,
  });

  final ImageCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cubit.images.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Image.file(File(cubit.images[index].path)),
        ),
      ),
    );
  }
}
