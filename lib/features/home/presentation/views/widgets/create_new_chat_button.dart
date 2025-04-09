import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class CreateNewChatButton extends StatelessWidget {
  const CreateNewChatButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        const Text('Create New Chat', style: AppStyles.textStyle14),
      ],
    );
  }
}