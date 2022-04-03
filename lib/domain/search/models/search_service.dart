import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failure/main_failure.dart';
import 'package:netflixapp/domain/search/models/search_respnds.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResp>> searchMovies(
      {required String movieQuery});
}
