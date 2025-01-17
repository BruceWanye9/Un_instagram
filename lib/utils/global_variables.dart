import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mlsc_uninstagram_project/screens/add_post_screen.dart';
import 'package:mlsc_uninstagram_project/screens/feed_screen.dart';
import 'package:mlsc_uninstagram_project/screens/profile_screen.dart';
import 'package:mlsc_uninstagram_project/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];