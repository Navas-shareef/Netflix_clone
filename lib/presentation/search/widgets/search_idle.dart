import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/search/widgets/title.dart';

class SearchIdles extends StatelessWidget {
  const SearchIdles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTile(
          title: 'Top Searches',
        ),
        khieght,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchItemTile(),
              separatorBuilder: (ctx, index) => const SizedBox(
                    height: 15,
                  ),
              itemCount: 15),
        )
      ],
    );
  }
}

const imageUrl =
    'https://i.pinimg.com/originals/3c/f4/cf/3cf4cf74674ede94488ee71d7ae04ade.jpg';

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: 70,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.fill),
          ),
        ),
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        )),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 23,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
