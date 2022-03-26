import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 170,
              width: 45,
            ),
            Container(
              height: 170,
              width: 120,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://cdn.shopify.com/s/files/1/0969/9128/products/Joker_-_Put_On_A_Happy_Face_-_Joaquin_Phoenix_-_Hollywood_English_Movie_Poster_3_de5e4cfc-cfd4-4732-aad1-271d6bdb1587.jpg?v=1579504979',
                      )),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
        Positioned(
          bottom: -18,
          left: 0,
          child: BorderedText(
            strokeWidth: 10,
            strokeColor: Colors.white,
            child: Text(
              (index + 1).toString(),
              style: TextStyle(fontSize: 90, color: Colors.black),
            ),
          ),
        )
      ],
    );
    ;
  }
}
