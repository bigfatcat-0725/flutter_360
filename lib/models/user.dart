import 'package:get/get.dart';

class User {
  String email;
  int coin;
  List likes = [].obs;
  List likePlaces = [].obs;

  User({
    required this.email,
    required this.coin,
  });
}

User userCat = User(
  email: 'bigfatcat0725@gmail.com',
  coin: 0,
);
