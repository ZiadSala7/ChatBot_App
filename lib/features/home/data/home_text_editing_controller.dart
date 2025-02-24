import 'package:flutter/material.dart';

// message controllers
TextEditingController chatController = TextEditingController();

void dispose() {
  chatController.dispose();
}
