import 'dart:ffi';

enum Category {
  ACTION,
  DRAMA,
  THRILLER,
  FANTASY,
  ROMANCE
}

class Movie {
  final int id;
  final String name;
  final String about;
  final String releaseDate;
  final Category category;

  Movie({
    required this.id,
    required this.name,
    required this.about,
    required this.releaseDate,
    required this.category,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      name: json['name'],
      about: json['about'],
      releaseDate: json['releaseDate'],
      category: _parseCategory(json['category']),
    );
  }
  static Category _parseCategory(String category) {
    switch (category) {
      case 'ACTION':
        return Category.ACTION;
      case 'DRAMA':
        return Category.DRAMA;
      case 'THRILLER':
        return Category.THRILLER;
      case 'FANTASY':
        return Category.FANTASY;
      case 'ROMANCE':
        return Category.ROMANCE;
      default:
        throw ArgumentError('Geçersiz kategori: $category');
    }
  }
}
