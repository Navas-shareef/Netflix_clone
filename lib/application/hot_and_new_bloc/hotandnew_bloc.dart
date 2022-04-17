import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/failure/main_failure.dart';
import 'package:netflixapp/domain/new_and_hot/hot_and_new_service.dart';
import 'package:netflixapp/domain/new_and_hot/models/new_and_hot.dart';

part 'hotandnew_bloc.freezed.dart';
part 'hotandnew_event.dart';
part 'hotandnew_state.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final HotAndNewService _hotAndNewService;
  HotandnewBloc(this._hotAndNewService) : super(HotandnewState.initial()) {
    // get movie data
    on<LoadDataComingSoon>((event, emit) async {
      // loading
      emit(const HotandnewState(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: true,
          hasError: false));
      final _result = await _hotAndNewService.getHotAndNewMovieData();

      _result.fold((MainFailure failure) {
        emit(const HotandnewState(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: false,
          hasError: true,
        ));
      }, (HotAndNewResp resp) {
        emit(HotandnewState(
          comingSoonList: resp.results!,
          everyOnesWatchingList: state.everyOnesWatchingList,
          isLoading: false,
          hasError: false,
        ));
      });
    });
// get movie data
    on<LoadDataEveryoneIsWatching>((event, emit) async {
      emit(const HotandnewState(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: true,
          hasError: false));
      final _result = await _hotAndNewService.getHotAndNewData();

      _result.fold((MainFailure failure) {
        emit(const HotandnewState(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: false,
          hasError: true,
        ));
      }, (HotAndNewResp resp) {
        emit(HotandnewState(
          comingSoonList: state.comingSoonList,
          everyOnesWatchingList: resp.results!,
          isLoading: false,
          hasError: false,
        ));
      });
    });
  }
}
