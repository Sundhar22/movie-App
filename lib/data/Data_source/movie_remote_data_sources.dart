import 'package:movie/common/import_files.dart';



abstract class MovieRemoteDataSource {
// creating data source by network calls by abstract
  Future<List<MovieModel>> getTrending();
  Future<List<MovieModel>> getPopular();
  Future<List<MovieModel>> getPlaying();
  Future<List<MovieModel>> getUpComingSoon();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final APIClient client;

  MovieRemoteDataSourceImpl(this.client);

  @override
  Future<List<MovieModel>> getTrending() async {
    final response = await client.get('trending/movie/week');
    final movie = MoviesResultModel.fromJson(response).movies;
    return movie!;
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    final response = await client.get('movie/popular');
    final movie = MoviesResultModel.fromJson(response).movies;
    return movie!;
  }

  @override
  Future<List<MovieModel>> getPlaying() async {
    final response = await client.get('movie/now_playing');
    final movie = MoviesResultModel.fromJson(response).movies;
    return movie!;
  }

  @override
  Future<List<MovieModel>> getUpComingSoon() async {
    final response = await client.get('movie/upcoming');
    final movie = MoviesResultModel.fromJson(response).movies;
    return movie!;
  }
}
