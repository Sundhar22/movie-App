// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../common/import_files.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  MovieRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<AppError, List<MovieModel>>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return Right(movies);
    } on Exception {
      return const Left(AppError('SomeThing Went Wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getComingSoon() async {
    try {
      final movie = await remoteDataSource.getUpComingSoon();
      return right(movie);
    } on Exception {
      return left(const AppError('SomeThing went Wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getNowPlaying() async {
    try {
      final movieList = await remoteDataSource.getPlaying();
      return right(movieList);
    } on Exception {
      return left(const AppError("SomeThing Went Wrong"));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPopular() async {
    try {
      final movies = await remoteDataSource.getPopular();
      return Right(movies);
    } on Exception {
      return left(const AppError('SomeThing Went Wrong'));
    }
  }
}
