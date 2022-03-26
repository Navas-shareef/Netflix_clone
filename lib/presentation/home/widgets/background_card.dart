import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors.dart';
import 'package:netflixapp/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              color: Colors.lightBlue,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://m.media-amazon.com/images/I/713+JsN7ZjL._SY550_.jpg',
                  ))),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomButtonWidget(
                title: 'My List',
                icon: Icons.add,
              ),
              TextButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kWhiteColor)),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 30,
                    color: Colors.black,
                  ),
                  label: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Play',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              const CustomButtonWidget(title: 'Info', icon: Icons.info),
            ],
          ),
        )
      ],
    );
  }
}
