import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetList = [const _SmartDownloads(), Section2(), Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'Downloads',
            )),
        body: ListView.separated(
            padding: EdgeInsets.all(20),
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (ctx, index) => SizedBox(
                  height: 20,
                ),
            itemCount: _widgetList.length));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      Icon(
        Icons.settings,
        color: kWhiteColor,
      ),
      Text('Smart Downloads')
    ]);
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {Key? key, required this.image, this.angle = 0, required this.margin})
      : super(key: key);

  final String image;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.3,
        height: size.width * 0.5,
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(fit: BoxFit.fill, image: NetworkImage(image))),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  List<String> _imageList = [
    'https://m.media-amazon.com/images/I/713+JsN7ZjL._SY550_.jpg',
    'https://cdn.shopify.com/s/files/1/0969/9128/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1v2iGKW1da2Q7MomGNdk0lZAhajAD2dFFqA&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        khieght,
        const Text(
          "We will download a personalised selection of \nmovies and shows for you,so there's\n always something to watch on\n your device.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        khieght,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.30,
                backgroundColor: Colors.grey.withOpacity(0.4),
              ),
              DownloadImageWidget(
                image: _imageList[0],
                margin: const EdgeInsets.only(
                  right: 90,
                  bottom: 60,
                ),
                angle: -30,
              ),
              DownloadImageWidget(
                image: _imageList[1],
                margin: const EdgeInsets.only(left: 90, bottom: 60),
                angle: 30,
              ),
              DownloadImageWidget(
                image: _imageList[2],
                margin: const EdgeInsets.only(right: 20),
                angle: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            onPressed: () {},
            color: kButtonColorBlue,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Setup',
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        khieght,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onPressed: () {},
          color: kWhiteColor,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        khieght
      ],
    );
  }
}
