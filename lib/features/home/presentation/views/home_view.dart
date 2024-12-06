import 'package:chatbot_app/constants.dart';
import 'package:chatbot_app/core/utils/app_images.dart';
import 'package:chatbot_app/core/utils/my_strings.dart';

import 'widgets/custom_home_view_appbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 60),
            const CustomHomeViewAppBar(),
            Expanded(
                child: Container(
              color: Colors.blue,
              child: const SingleChildScrollView(
                  child: Column(
                children: [],
              )),
            )),
            Row(
              children: [
                CustomBottomChatBarItem(
                  image: AppImages.microphone,
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                CustomBottomChatBarItem(
                  image: AppImages.galleryIcon,
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: customOutlineInputBorderMethod(),
                      focusedBorder: customOutlineInputBorderMethod(),
                      filled: true,
                      fillColor: mainColor,
                      hintText: MyStrings.textFieldTxt,
                      suffixIcon: Image.asset(AppImages.sendIcon),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorderMethod() {
    return const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(30)));
  }
}

class CustomBottomChatBarItem extends StatelessWidget {
  final String image;
  final Function() onPressed;
  const CustomBottomChatBarItem({
    super.key,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 55,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: mainColor,
        ),
        child: Image.asset(image),
      ),
    );
  }
}
