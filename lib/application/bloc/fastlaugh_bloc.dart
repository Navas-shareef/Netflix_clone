import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/downloads/i_download_repo.dart';
import 'package:netflixapp/domain/downloads/models/downloads.dart';

part 'fastlaugh_bloc.freezed.dart';
part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';

final vedioURLS = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
];

ValueNotifier<Set<int>> likedVideosIdNotifier = ValueNotifier({});

@injectable
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  FastlaughBloc(
    IDownloadsRepo _downloadService,
  ) : super(FastlaughState.initial()) {
    on<Initial>((event, emit) async {
      // sending loading to ui
      emit(const FastlaughState(
        vediosList: [],
        isLoading: true,
        isError: false,
      ));
      // get trending  movies
      final _result = await _downloadService.getDownloadsImage();
      final _state = _result.fold(
          (l) => const FastlaughState(
                vediosList: [],
                isLoading: false,
                isError: true,
              ),
          (resp) => FastlaughState(
                vediosList: resp,
                isLoading: false,
                isError: false,
              ));

      // send to ui
      emit(_state);
    });
  }
}
