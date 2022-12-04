import '../../common/import_files.dart';

class MoviesResultModel {
  List<MovieModel>? movies;

  MoviesResultModel({this.movies});

// Converting json to dart class
  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      movies = <MovieModel>[];
      json['results'].forEach((v) {
        movies!.add(MovieModel.fromJson(v));
      });
    }
  }

// converting dart class to json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (movies != null) {
      data['results'] = movies!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
