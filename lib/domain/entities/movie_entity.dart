// we need only required data from the API(from movie model)

import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String tittle;
  final num voteAverage;
  final String? overview;

  const MovieEntity({
    required this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.tittle,
    required this.voteAverage,
    this.overview,
  });

  @override
  List<Object?> get props => [
        id,
        tittle,
      ];

  @override
  bool? get stringify => true;
}
