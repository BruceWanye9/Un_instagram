import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mlsc_uninstagram_project/screen/add_post_screen.dart';
import 'package:mlsc_uninstagram_project/screen/feed_screen.dart';
import 'package:mlsc_uninstagram_project/screen/profile_screen.dart';
import 'package:mlsc_uninstagram_project/screen/search_screen.dart';

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