import 'package:flutter/material.dart';
import 'package:netflixapp/application/fastlaugh/fastlaugh_bloc.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/domain/downloads/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VedioListInhertedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VedioListInhertedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(child: widget, key: key);
  @override
  bool updateShouldNotify(covariant VedioListInhertedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VedioListInhertedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VedioListInhertedWidget>();
  }
}

class VedioListItem extends StatelessWidget {
  const VedioListItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VedioListInhertedWidget.of(context)?.movieData.posterPath;
    final videoURL = vedioURLS[index % vedioURLS.length];
    return Stack(
      children: [
        FastLaughVedioPlayer(videoUrl: videoURL, onStateChanged: (bool) {}),
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30,
                    backgroundImage: posterPath == null
                        ? null
                        : NetworkImage('$imageAppendUrl$posterPath'),
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: likedVideosIdNotifier,
                  builder: (BuildContext c, Set<int> newLikedIds, Widget? _) {
                    final _index = index;

                    if (newLikedIds.contains(_index)) {
                      return GestureDetector(
                        onTap: () {
                          likedVideosIdNotifier.value.remove(_index);
                          likedVideosIdNotifier.notifyListeners();
                        },
                        child: const VedioActionWidget(
                            title: 'Liked', icon: Icons.favorite_outlined),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          likedVideosIdNotifier.value.add(_index);
                          likedVideosIdNotifier.notifyListeners();
                        },
                        child: const VedioActionWidget(
                            title: 'LOL', icon: Icons.emoji_emotions),
                      );
                    }
                  },
                ),
                const VedioActionWidget(title: 'My List', icon: Icons.add),
                GestureDetector(
                    onTap: () {
                      final movieName =
                          VedioListInhertedWidget.of(context)!.movieData.title;
                      if (movieName != null) {
                        Share.share(movieName);
                      }
                    },
                    child: const VedioActionWidget(
                        title: 'Share', icon: Icons.share)),
                const VedioActionWidget(title: 'Play', icon: Icons.play_arrow)
              ],
            )
          ],
        )
      ],
    );
  }
}

class FastLaughVedioPlayer extends StatefulWidget {
  FastLaughVedioPlayer(
      {Key? key, required this.videoUrl, required this.onStateChanged})
      : super(key: key);
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;

  @override
  State<FastLaughVedioPlayer> createState() => _FastLaughVedioPlayerState();
}

class _FastLaughVedioPlayerState extends State<FastLaughVedioPlayer> {
  late VideoPlayerController _vedioPlayerController;

  @override
  void initState() {
    _vedioPlayerController = VideoPlayerController.network(widget.videoUrl);
    _vedioPlayerController.initialize().then((value) {
      setState(() {
        _vedioPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _vedioPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: _vedioPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _vedioPlayerController.value.aspectRatio,
                child: VideoPlayer(_vedioPlayerController),
              )
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ));
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
