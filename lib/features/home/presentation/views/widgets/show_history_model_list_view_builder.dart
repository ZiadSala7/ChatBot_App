import 'package:flutter/material.dart';

import 'drawer_show_dialog.dart';

class ShowHistoryModelListViewBuilder extends StatelessWidget {
  const ShowHistoryModelListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text('Hello Brooo'),
                      Text('Hello Brooo'),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      drawerShowDialog(context);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(128, 255, 86, 74),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
