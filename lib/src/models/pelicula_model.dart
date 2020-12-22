
class Peliculas {

  List<Pelicula> items = new List();
  
  Peliculas();

  Peliculas.fromJsonList( List<dynamic> jsonList ) {
    if(jsonList == null) return;
    
    for(var item in jsonList){
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }

}

class Pelicula {
  String uniqueId;
  double popularity;
  int id;
  String releaseDate;
  bool adult;
  String backdropPath;
  String title;
  List<int> genreIds;
  int voteCount;
  String originalLanguage;
  String originalTitle;
  String posterPath;
  String overview;
  bool video;
  double voteAverage;

  Pelicula({
    this.popularity,
    this.id,
    this.releaseDate,
    this.adult,
    this.backdropPath,
    this.title,
    this.genreIds,
    this.voteCount,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.overview,
    this.video,
    this.voteAverage,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json){
    popularity        = json['popularity'] / 1;
    id                = json['id'];
    releaseDate       = json['release_date'];
    adult             = json['adult'];
    backdropPath      = json['backdrop_path'];
    title             = json['title'];
    genreIds          = json['genre_ids'].cast<int>();
    voteCount         = json['vote_count'];
    originalLanguage  = json['original_language'];
    originalTitle     = json['original_title'];
    posterPath        = json['poster_path'];
    overview          = json['overview'];
    video             = json['video'];
    voteAverage       = json['vote_average'] / 1;
  }

  getPosterImg(){
    if(posterPath == null ){
      return 'https://www.subicicleta.com/assets/images/no-image.png';
    }else{
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }
  getBackgroundImg(){
    if(backdropPath == null ){
      return 'https://www.subicicleta.com/assets/images/no-image.png';
    }else{
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }
}
