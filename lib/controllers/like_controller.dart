import 'package:flutter_360/models/user.dart';
import 'package:get/get.dart';

// 유저의 정보에 들어감

class LikeController extends GetxController {
  onLike(place) {
    userCat.likes.add(place.title);
    userCat.likePlaces.add(place.thumbnail);
  }

  offLike(place) {
    userCat.likes.remove(place.title);
    userCat.likePlaces.remove(place.thumbnail);
  }
}
