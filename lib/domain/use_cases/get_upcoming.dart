import 'package:movie/common/import_files.dart';

class GetUpComing extends UseCase<List<MovieEntity>,NoParams>{
  final MovieRepository repository;

  GetUpComing(this.repository);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams params) async {
       return await repository.getComingSoon();
  }
}
