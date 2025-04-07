import 'widgets/custom_home_view_appbar.dart';
import 'widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeViewAppBar(context),
      body: const HomeViewBody(),
      drawer: Drawer(
        child: ListView(
          children: [
            Row(
              spacing: 16,
              children: [
                const SizedBox(),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                const Text('Create New Chat')
              ],
            )
          ],
        ),
      ),
    );
  }
}
