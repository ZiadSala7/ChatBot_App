import '../../managers/image_cubit/image_cubit.dart';
import '../../managers/image_cubit/image_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_home_bottom_bar_chat.dart';
import 'found_image_display.dart';
import 'messages_display_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, ImageStates>(
      builder: (context, state) {
        final cubit = BlocProvider.of<ImageCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 15),
                // to display all chat models
                const Expanded(child: MessagesDisplayWidget()),
                // check if there are images in image cubit list
                state is FoundImages
                    ? FoundImagesDisplay(cubit: cubit)
                    : const SizedBox(),
                // bottom part of the app (Textfield and gallery button)
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: CustomHomeBottomBarChat(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
