import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/fast_laughs/widgets/vedio_list_item.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            40,
            (index) => VedioListItem(
                  index: index,
                )),
      )),
    ));
  }
}
