import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failure/main_failure.dart';
import 'package:netflixapp/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}
