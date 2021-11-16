import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;

  // ignore: prefer_const_constructors_in_immutables
  DestinationModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
  });

  // ignore: non_constant_identifier_names
  factory DestinationModel.fromJson(String id, Map<String, dynamic> Json) =>
      DestinationModel(
        id: id,
        name: Json['name'],
        city: Json['city'],
        imageUrl: Json['imageUrl'],
        rating: Json['rating'],
        price: Json['price'],
      );

  @override
  List<Object?> get props => [id, name, city, imageUrl, rating, price];
}
