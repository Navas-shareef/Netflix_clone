import 'package:flutter/material.dart';

class VedioListItem extends StatelessWidget {
  const VedioListItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // left
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 25,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            // right

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://m.media-amazon.com/images/I/713+JsN7ZjL._SY550_.jpg',
                    ),
                  ),
                ),
                VedioActionWidget(title: 'LOL', icon: Icons.emoji_emotions),
                VedioActionWidget(title: 'My List', icon: Icons.add),
                VedioActionWidget(title: 'Share', icon: Icons.share),
                VedioActionWidget(title: 'Play', icon: Icons.play_arrow)
              ],
            )
          ],
        )
      ],
    );
  }
}

class VedioActionWidget extends StatelessWidget {
  const VedioActionWidget({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
