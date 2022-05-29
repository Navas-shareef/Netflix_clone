import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/home/widgets/background_card.dart';
import 'package:netflixapp/presentation/widgets/main_card_title.dart';

import '../../application/home/home_bloc.dart';
import 'widgets/number_card_title.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
const hometextstyle = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: SafeArea(
              child: Stack(
                children: [
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state.hasError) {
                        return const Center(
                          child: Text('error occuree while getting data'),
                        );
                      } else {
                        final _pastYear = state.pastYearMovieList.map((m) {
                          return '$imageAppendUrl${m.posterPath}';
                        }).toList();
                        final _trendingYear = state.trendingMovieList.map((m) {
                          return '$imageAppendUrl${m.posterPath}';
                        }).toList();
                        final _southIndianmovie =
                            state.southIndianMovieList.map((m) {
                          return '$imageAppendUrl${m.posterPath}';
                        }).toList();
                        final _tenseDramas =
                            state.tenseDramasMovieList.map((m) {
                          return '$imageAppendUrl${m.posterPath}';
                        }).toList();
                        _tenseDramas.shuffle();
                        _southIndianmovie.shuffle();
                        _pastYear.shuffle();
                        return ListView(
                          children: [
                            const BackgroundCard(),
                            MainCardTitle(
                              title: "Released in the year",
                              images: _pastYear,
                            ),
                            MainCardTitle(
                              title: "Trending Now",
                              images: _trendingYear,
                            ),
                            const NumberTitileCard(),
                            MainCardTitle(
                              title: "Tense Dramas",
                              images: _tenseDramas,
                            ),
                            MainCardTitle(
                              title: "South Indian Cinema's",
                              images: _southIndianmovie,
                            ),
                          ],
                        );
                      }
                    },
                  ),
                  scrollNotifier.value
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          color: Colors.black.withOpacity(0.3),
                          width: double.infinity,
                          height: 60,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    'https://cdn.vox-cdn.com/thumbor/AwKSiDyDnwy_qoVdLPyoRPUPo00=/39x0:3111x2048/1400x1400/filters:focal(39x0:3111x2048):format(png)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                  ),
                                  kwidth,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.transparent,
                                  ),
                                  kwidth,
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'TV Shows',
                                    style: hometextstyle,
                                  ),
                                  Text(
                                    'Movies',
                                    style: hometextstyle,
                                  ),
                                  Text('Categories', style: hometextstyle)
                                ],
                              )
                            ],
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
