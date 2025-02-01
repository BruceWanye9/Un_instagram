import 'package:flutter/material.dart';
import 'package:uninstagram/post_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.white,
            height: 32,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.messenger_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const PostCard(),
    );
  }
}
