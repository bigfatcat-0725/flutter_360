import 'package:flutter_360/models/user.dart';
import 'package:get/get.dart';

// 코인은 장소마다의 유니크하게 1개씩(그러려먼 장소마다 코인 id 를 만들어 구독 처럼 만들어야함)
// or 시간마다 누를 수 있게?(이건 간단하나 시간 조작으로 올릴 수도?)
// db 에 유저가 있고, 유저의 코인이 증가

class CoinController extends GetxController {
  increment() {
    userCat.coin++;
    print(userCat.coin);
  }
}
