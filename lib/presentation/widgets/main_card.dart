import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 120,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                image,
              )),
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
