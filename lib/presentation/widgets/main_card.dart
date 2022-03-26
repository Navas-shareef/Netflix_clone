import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 120,
      decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://m.media-amazon.com/images/I/713+JsN7ZjL._SY550_.jpg',
              )),
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
