import 'package:flutter/material.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/search/widgets/title.dart';

class SearchResultTile extends StatelessWidget {
  const SearchResultTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTile(title: 'Movies & TV'),
        khieght,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8 / 1,
          children: List.generate(20, (index) => const MainCard()),
        ))
      ],
    );
  }
}

const imageUrl =
    'https://i.pinimg.com/originals/3c/f4/cf/3cf4cf74674ede94488ee71d7ae04ade.jpg';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
            image: NetworkImage(imageUrl), fit: BoxFit.fill),
      ),
    );
  }
}
