import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/failure/main_failure.dart';
import 'package:netflixapp/domain/new_and_hot/hot_and_new_service.dart';
import 'package:netflixapp/domain/new_and_hot/models/new_and_hot.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    on<GetHomeScreenData>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final _movieResult = await _homeService.getHotAndNewMovieData();
      final _tvResult = await _homeService.getHotAndNewData();
      final _state2 = _movieResult.fold((MainFailure failure) {
        return const HomeState(
            pastYearMovieList: [],
            trendingMovieList: [],
            tenseDramasMovieList: [],
            southIndianMovieList: [],
            trendingTvList: [],
            isLoading: false,
            hasError: true);
      }, (HotAndNewResp resp) {
        return HomeState(
            pastYearMovieList: resp.results!,
            trendingMovieList: resp.results!,
            tenseDramasMovieList: resp.results!,
            southIndianMovieList: resp.results!,
            trendingTvList: state.trendingTvList,
            isLoading: false,
            hasError: false);
      });
      emit(_state2);
      final _state1 = _tvResult.fold((MainFailure failure) {
        return const HomeState(
            pastYearMovieList: [],
            trendingMovieList: [],
            tenseDramasMovieList: [],
            southIndianMovieList: [],
            trendingTvList: [],
            isLoading: false,
            hasError: true);
      }, (HotAndNewResp res) {
        return HomeState(
            pastYearMovieList: state.pastYearMovieList,
            trendingMovieList: state.trendingMovieList,
            tenseDramasMovieList: state.tenseDramasMovieList,
            southIndianMovieList: state.southIndianMovieList,
            trendingTvList: res.results!,
            isLoading: false,
            hasError: false);
      });
      emit(_state1);
    });
  }
}
