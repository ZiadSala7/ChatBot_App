import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'create_new_chat_button.dart';
import 'show_history_model_list_view_builder.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            // button to add new history model
            const CreateNewChatButton(),
            const Divider(thickness: 2),
            Text(
              'Chat History',
              style: AppStyles.textStyle25.copyWith(color: Colors.black),
            ),
            const ShowHistoryModelListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
