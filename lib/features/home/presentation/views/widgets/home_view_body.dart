import 'custom_home_bottom_bar_chat.dart';
import 'messages_display_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 15),
            Expanded(child: MessagesDisplayWidget()),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: CustomHomeBottomBarChat(),
            ),
          ],
        ),
      ),
    );
  }
}
