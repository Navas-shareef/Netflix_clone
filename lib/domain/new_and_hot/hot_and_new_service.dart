import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failure/main_failure.dart';
import 'package:netflixapp/domain/new_and_hot/models/new_and_hot.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewData();
}
