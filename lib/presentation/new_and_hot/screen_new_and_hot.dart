import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors.dart';
import 'package:netflixapp/core/constant.dart';

import 'widgets/coming_soon.dart';
import 'widgets/everyone_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
                kwidth,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                ),
                kwidth,
              ],
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: kWhiteColor,
                labelColor: kBlackColor,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(30)),
                tabs: const [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone Watching",
                  )
                ],
              ),
            )),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryOnesWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const ComingSoon());
  }

  _buildEveryOnesWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) =>
            const EveryoneWatchingWidget());
  }
}
