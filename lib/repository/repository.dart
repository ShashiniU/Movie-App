// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:movieapp/model/genre_response.dart';
import 'package:movieapp/model/movie_response.dart';
import 'package:movieapp/model/person_response.dart';

class MovieRepository {
    final String apiKey = "<<themoviedb.org - Apikey here";
    static String mainUrl = "http://api.themoviedb.org/3";

    final Dio _dio = Dio();
    
    var getPopularUrl = '$mainUrl/movie/top_rated';
    var getMovieUrl = '$mainUrl/discover/movie';
    var getPlayingUrl = '$mainUrl/movie/now_playing';
    var getGenreUrl = '$mainUrl/genre/movie/list';
    var getPersonUrl = '$mainUrl/trending/person/week';

    Future<MovieResponse> getMovies() async {
      var params = {
        "api_key" : apiKey,
        "language" : "en-US",
        "page" : 1
      };

       try {
         Response response = await _dio.get(getPopularUrl,queryParameters:params);
         return MovieResponse.fromJson(response.data);
       } catch (error,stackTrace) {
         print("Exception occured : $error stackTrace : $stackTrace");
         return MovieResponse.withError("$error");
       }

    } 

    // 2nd
    
    Future<MovieResponse> getPlayingMovies() async {
      var params = {
        "api_key" : apiKey,
        "language" : "en-US",
        "page" : 1
      };

       try {
         Response response = await _dio.get(getPlayingUrl,queryParameters:params);
         return MovieResponse.fromJson(response.data);
       } catch (error,stackTrace) {
         print("Exception occured : $error stackTrace : $stackTrace");
         return MovieResponse.withError("$error");
       }

    } 

   //3rd
    
    Future<GenreResponse> getGenres() async {
      var params = {
        "api_key" : apiKey,
        "language" : "en-US",
        "page" : 1
      };

       try {
         Response response = await _dio.get(getGenreUrl,queryParameters:params);
         return GenreResponse.fromJson(response.data);
       } catch (error,stackTrace) {
         print("Exception occured : $error stackTrace : $stackTrace");
         return GenreResponse.withError("$error");
       }

    } 

   //4th
    Future<PersonResponse> getPersons() async {
      var params = {
        "api_key" : apiKey,
      };

       try {
         Response response = await _dio.get(getPopularUrl,queryParameters:params);
         return PersonResponse.fromJson(response.data);
       } catch (error,stackTrace) {
         print("Exception occured : $error stackTrace : $stackTrace");
         return PersonResponse.withError("$error");
       }

    } 

   //5th

    Future<MovieResponse> getMovieByGenre(int id) async {
      var params = {
        "api_key" : apiKey,
        "language" : "en-US",
        "page" : 1,
        "with_genres" : id
      };

       try {
         Response response = await _dio.get(getMovieUrl,queryParameters:params);
         return MovieResponse.fromJson(response.data);
       } catch (error,stackTrace) {
         print("Exception occured : $error stackTrace : $stackTrace");
         return MovieResponse.withError("$error");
       }

    } 
}