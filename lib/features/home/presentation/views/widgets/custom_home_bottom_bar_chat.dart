import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:image_picker/image_picker.dart';
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
            final ImagePicker imagePicker = ImagePicker();
            final List<XFile>? images = await imagePicker.pickMultiImage();
          },
        ),
        const SizedBox(width: 10),
        const CustomTextField(),
      ],
    );
  }
}
