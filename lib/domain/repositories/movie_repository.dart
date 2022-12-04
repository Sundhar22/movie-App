import 'package:movie/common/import_files.dart';

abstract class MovieRepository {
  // i was implemented in data/repositories
  Future<Either<AppError, List<MovieEntity>>> getTrending();
  Future<Either<AppError, List<MovieEntity>>> getPopular();
  Future<Either<AppError, List<MovieEntity>>> getComingSoon();
  Future<Either<AppError, List<MovieEntity>>> getNowPlaying();
}
