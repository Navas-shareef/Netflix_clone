import 'package:flutter/material.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflixapp/presentation/widgets/vedeo_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;
  const EveryoneWatchingWidget({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        khieght,
        Text(
          movieName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        khieght,
        Text(
          description,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(
          height: 30,
        ),
        VedeoWidget(
          url: posterPath,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
                textSize: 16, iconSize: 25, title: "share", icon: Icons.share),
            kwidth,
            CustomButtonWidget(
                textSize: 16, iconSize: 25, title: "My List", icon: Icons.add),
            kwidth,
            CustomButtonWidget(
                textSize: 16,
                iconSize: 25,
                title: "Play",
                icon: Icons.play_arrow),
            kwidth
          ],
        )
      ],
    );
  }
}
