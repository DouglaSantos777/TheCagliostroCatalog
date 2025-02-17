import 'dart:convert';

class Film {
  final String id;
  final String title;
  final String originalTitle;
  final String originalTitleRomanised;
  final String image;
  final String movieBanner;
  final String description;
  final String director;
  final String producer;
  final String releaseDate;
  final String runningTime;
  final String rtScore;
  final List<String> people;
  final List<String> species;
  final List<String> locations;
  final List<String> vehicles;
  final String url;

  Film({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.originalTitleRomanised,
    required this.image,
    required this.movieBanner,
    required this.description,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.runningTime,
    required this.rtScore,
    required this.people,
    required this.species,
    required this.locations,
    required this.vehicles,
    required this.url,
  });

  static List<Film> fromJsonList(String str) {
    final jsonData = json.decode(str) as List;
    return jsonData.map((jsonItem) => Film.fromJson(jsonItem)).toList();
  }

  static String toJsonList(List<Film> films) {
    final jsonList = films.map((film) => film.toJson()).toList();
    return json.encode(jsonList);
  }

  factory Film.fromJson(Map<String, dynamic> json) {
    return Film(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      originalTitle: json['original_title'] ?? '',
      originalTitleRomanised: json['original_title_romanised'] ?? '',
      image: json['image'] ?? '',
      movieBanner: json['movie_banner'] ?? '',
      description: json['description'] ?? '',
      director: json['director'] ?? '',
      producer: json['producer'] ?? '',
      releaseDate: json['release_date'] ?? '',
      runningTime: json['running_time'] ?? '',
      rtScore: json['rt_score'] ?? '',
      people: List<String>.from(json['people'] ?? []),
      species: List<String>.from(json['species'] ?? []),
      locations: List<String>.from(json['locations'] ?? []),
      vehicles: List<String>.from(json['vehicles'] ?? []),
      url: json['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'original_title': originalTitle,
      'original_title_romanised': originalTitleRomanised,
      'image': image,
      'movie_banner': movieBanner,
      'description': description,
      'director': director,
      'producer': producer,
      'release_date': releaseDate,
      'running_time': runningTime,
      'rt_score': rtScore,
      'people': people,
      'species': species,
      'locations': locations,
      'vehicles': vehicles,
      'url': url,
    };
  }
}