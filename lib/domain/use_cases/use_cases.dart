import 'package:movie/common/import_files.dart';

abstract class UseCase<T, P> {
  // T - type,P-parameter.
  Future<Either<AppError, T>> call(P params);
}
