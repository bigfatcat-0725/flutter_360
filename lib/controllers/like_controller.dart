import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final likeBox = GetStorage();
var like = List.empty().obs;

class LikeController extends GetxController {
  onLike(String place) {
    like.add(place);
    print(like);
    likeBox.write('likes', like);
    update();
  }

  offLike(String place) {
    like.remove(place);
    print(like);
    likeBox.write('likes', like);
    update();
  }
}
