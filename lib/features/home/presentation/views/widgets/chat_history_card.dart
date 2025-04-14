import 'package:flutter/material.dart';

import '../../../data/models/history_model.dart';
import 'drawer_show_dialog.dart';

class ChatHistoryCard extends StatelessWidget {
  final HistoryModel model;
  const ChatHistoryCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                FittedBox(
                  child: Text(
                    model.dateTime.day.toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(model.dateTime.minute.toString()),
              ],
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => DrawerShowDialog(model: model),
                );
              },
              icon: const Icon(
                Icons.delete,
                color: Color.fromARGB(128, 255, 86, 74),
              ),
            )
          ],
        ),
      ),
    );
  }
}
