import 'dart:io';
import '../../managers/image_cubit/image_cubit.dart';
import '../../managers/image_cubit/image_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_home_bottom_bar_chat.dart';
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
                const Expanded(child: MessagesDisplayWidget()),
                state is FoundImages
                    ? SizedBox(
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
                      )
                    : const SizedBox(),
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
