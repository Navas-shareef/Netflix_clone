import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/failure/main_failure.dart';
import 'package:netflixapp/domain/downloads/i_download_repo.dart';
import 'package:netflixapp/domain/downloads/models/downloads.dart';
import 'package:netflixapp/domain/search/models/search_respnds.dart';
import 'package:netflixapp/domain/search/models/search_service.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsRepo;
  final SearchService _searchService;
  SearchBloc(this._searchService, this._downloadsRepo)
      : super(SearchState.initial()) {
    // idle State
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          searchResultList: [],
          idleList: state.idleList,
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      // get trending
      final _result = await _downloadsRepo.getDownloadsImage();
      _result.fold((MainFailure f) {
        emit(const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: false,
          isError: true,
        ));
      }, (List<Downloads> list) {
        emit(SearchState(
          searchResultList: [],
          idleList: list,
          isLoading: false,
          isError: false,
        ));
      });

      // show ui
    });
    // search state
    on<SearchMovie>((event, emit) async {
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      // call search movie api
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      _result.fold((MainFailure f) {
        emit(const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: false,
          isError: false,
        ));
      }, (SearchResp r) {
        emit(SearchState(
          searchResultList: r.results,
          idleList: [],
          isLoading: true,
          isError: false,
        ));
      });
      print(_result.toString());
      // show ui
    });
  }
}
