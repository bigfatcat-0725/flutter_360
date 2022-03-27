import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// 코인은 장소마다의 유니크하게 1개씩 or 시간마다 누를 수 있게?

final box = GetStorage();
var coin = 0.obs;

class CoinController extends GetxController {
  increment() {
    coin.value++;
    box.write('coins', '$coin');
    update();
  }
}
