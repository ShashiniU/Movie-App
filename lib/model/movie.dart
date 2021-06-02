class Movie{
   final int id;
   final double popularity;
   final String title;
   final String backPoster;
   final String poster;
   final String overview;
   final double rating;

   Movie(
     this.id,
     this.popularity,
     this.backPoster,
     this.overview,
     this.poster,
     this.rating,
     this.title
     );

     Movie.fromJson(Map<String,dynamic> json)
     :  id = json["id"],
        popularity = json["popularity"],
        title = json ["title"],
        backPoster =json ["backdrop_path"],
        overview = json ["overview"],
        poster = json ["poster"],
        rating = json ["vote_average"].toDouble();
        


}