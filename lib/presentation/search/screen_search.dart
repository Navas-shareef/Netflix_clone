import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          khieght,
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.5),
            style: const TextStyle(color: Colors.white),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
          ),
          khieght,
          Expanded(child: const SearchResultTile())
        ],
      ),
    )));
  }
}