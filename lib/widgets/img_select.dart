import 'dart:typed_data'; // Import for Uint8List

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Import for ImagePicker, XFile, and ImageSource

Future<Uint8List?> pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source: source);

  if (file != null) {
    return await file.readAsBytes(); // Read image bytes and return
  }
  print('No image selected');
  return null;
}

void showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}
