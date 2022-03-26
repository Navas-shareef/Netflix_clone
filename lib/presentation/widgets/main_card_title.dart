import 'package:flutter/material.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/widgets/main_title.dart';

import 'main_card.dart';

class MainCardTitle extends StatelessWidget {
  const MainCardTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(title: title),
        khieght,
        LimitedBox(
          maxHeight: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: MainCard(),
                    )),
          ),
        )
      ],
    );
  }
}
 