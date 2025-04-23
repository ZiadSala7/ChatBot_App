import '../../../../../core/utils/app_images.dart';
import '../../managers/image_cubit/image_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_bottom_chatbar_item.dart';
import 'custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomHomeBottomBarChat extends StatelessWidget {
  const CustomHomeBottomBarChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBottomChatBarItem(
          image: AppImages.galleryIcon,
          onPressed: () async {
            await BlocProvider.of<ImageCubit>(context).pickImages();
          },
        ),
        const SizedBox(width: 10),
        const CustomTextField(),
      ],
    );
  }
}
