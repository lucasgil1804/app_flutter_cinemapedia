import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieFromMovieDB moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '') ? 'https://image.tmdb.org/t/p/w500/${ moviedb.backdropPath }' : 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Image-not-found.png', // imagen por defecto cuando no tiene backdroppath
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '') ? 'https://image.tmdb.org/t/p/w500/${ moviedb.posterPath }' : 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Image-not-found.png', // imagen por defecto cuando no tiene posterpath
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );
}