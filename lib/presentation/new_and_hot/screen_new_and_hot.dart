import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/hot_and_new_bloc/hotandnew_bloc.dart';
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
          ComingSoonLst(),
          _buildEveryOnesWatching(),
        ]),
      ),
    );
  }

  _buildEveryOnesWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) =>
            const EveryoneWatchingWidget());
  }
}

class ComingSoonLst extends StatelessWidget {
  const ComingSoonLst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(const LoadDataComingSoon());
    });
    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.hasError) {
          print(state.comingSoonList);
          return const Center(
            child: Text('Error ocurred while getting data'),
          );
        } else if (state.comingSoonList.isEmpty) {
          return const Center(
            child: Text('ComingSoon list is Empty'),
          );
        } else {
          return ListView.builder(
              itemCount: state.comingSoonList.length,
              itemBuilder: (BuildContext context, index) {
                final _movie = state.comingSoonList[index];
                return ComingSoon(
                  id: _movie.id.toString(),
                  month: 'MAR',
                  day: '11',
                  posterPath: '$imageAppendUrl${_movie.posterPath}',
                  movieName: _movie.originalTitle ?? 'No title',
                  description: _movie.overview ?? 'No Description',
                );
              });
        }
      },
    );
  }
}
