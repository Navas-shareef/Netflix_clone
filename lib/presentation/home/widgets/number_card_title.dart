import 'package:flutter/material.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/home/widgets/number_card.dart';
import 'package:netflixapp/presentation/widgets/main_title.dart';

class NumberTitileCard extends StatelessWidget {
  const NumberTitileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Maintitle(title: 'Top 10 Tv shows in India Today'),
        khieght,
        LimitedBox(
          maxHeight: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: NumberCard(
                        index: index,
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
