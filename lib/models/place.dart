import 'package:flutter_lorem/flutter_lorem.dart';

String text = lorem(paragraphs: 1, words: 15);

class Place {
  String imgUrl;
  String thumbnail;
  String title;
  String description;
  String address;
  double latitude;
  double longitude;

  Place({
    required this.imgUrl,
    required this.title,
    required this.description,
    required this.address,
    required this.thumbnail,
    required this.latitude,
    required this.longitude,
  });
}

List<Place> placeList = [
  Place(
    imgUrl: 'assets/360-1.jpg',
    thumbnail: 'assets/360-1-t.jpg',
    title: 'WELCOME BEACH',
    description: 'Here is WELCOME BEACH.',
    address: 'This is Address 1',
    latitude: 0.0,
    longitude: 50,
  ),
  Place(
    imgUrl: 'assets/360-2.jpg',
    thumbnail: 'assets/360-2-t.jpg',
    title: 'FLUTTER HOTEL',
    description: 'Here is FLUTTER HOTEL.',
    address: 'This is Address 2',
    latitude: 0.0,
    longitude: 70,
  ),
  Place(
    imgUrl: 'assets/360-3.jpg',
    thumbnail: 'assets/360-3-t.jpg',
    title: 'DART CITY HALL',
    description: 'Here is DART CITY HALL.',
    address: 'This is Address 3',
    latitude: 0.0,
    longitude: 90,
  ),
  Place(
    imgUrl: 'assets/360-4.jpg',
    thumbnail: 'assets/360-4-t.jpg',
    title: 'NIGHT CITY',
    description: 'Here is NIGHT CITY.',
    address: 'This is Address 4',
    latitude: 0.0,
    longitude: 110,
  ),
  Place(
    imgUrl: 'assets/360-5.jpg',
    thumbnail: 'assets/360-5-t.jpg',
    title: 'GOD MOUNTAIN',
    description: 'Here is GOD MOUNTAIN.',
    address: 'This is Address 5',
    latitude: 0.0,
    longitude: 130,
  ),
];
