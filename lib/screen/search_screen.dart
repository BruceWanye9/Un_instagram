import 'package:mlsc_uninstagram_project/utils/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: mobileBackgroundColor,
      title: TextFormField(
        controller: searchController,
        decoration: const InputDecoration(labelText: 'Search for a user'),
        onFieldSubmitted: (String _) {
          print(_);
          print(searchController.text);
        },
      ),
    ));
  }
}
