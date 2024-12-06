import 'package:chatbot_app/features/home/presentation/views/widgets/custom_home_bottom_bar_chat.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/custom_home_view_appbar.dart';
import 'package:flutter/material.dart';

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
                  ),
                ),
              ),
            ),
            const CustomHomeBottomBarChat(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
