import 'package:movie/common/import_files.dart';

class GetNowPlaying extends UseCase<List<MovieEntity>,NoParams> {
  final MovieRepository repository;

  GetNowPlaying(this.repository);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams params) async {
       return await repository.getNowPlaying();
  }
}
