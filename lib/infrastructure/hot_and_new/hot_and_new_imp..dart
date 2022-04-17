import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/api_endpoints.dart';
import 'package:netflixapp/domain/core/failure/main_failure.dart';
import 'package:netflixapp/domain/new_and_hot/hot_and_new_service.dart';
import 'package:netflixapp/domain/new_and_hot/models/new_and_hot.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewImplimentation implements HotAndNewService {
  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.HotAndNewMovie);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);
        print('get data');
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.HotAndNewTV);

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.data.toString());
        final result = HotAndNewResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
