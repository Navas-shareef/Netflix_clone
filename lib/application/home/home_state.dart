part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Results> pastYearMovieList,
    required List<Results> trendingMovieList,
    required List<Results> tenseDramasMovieList,
    required List<Results> southIndianMovieList,
    required List<Results> trendingTvList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
      pastYearMovieList: [],
      tenseDramasMovieList: [],
      trendingMovieList: [],
      southIndianMovieList: [],
      trendingTvList: [],
      isLoading: false,
      hasError: false);
}
