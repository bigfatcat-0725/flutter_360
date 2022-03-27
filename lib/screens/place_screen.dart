import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_360/controllers/coin_controller.dart';
import 'package:flutter_360/controllers/like_controller.dart';
import 'package:flutter_360/models/place.dart';
import 'package:flutter_360/models/user.dart';
import 'package:flutter_360/screens/place_detail_screen.dart';
import 'package:get/get.dart';
import 'package:panorama/panorama.dart';

class PlaceScreen extends StatelessWidget {
  final Place place;
  final CoinController coinController = CoinController();
  final LikeController likeController = LikeController();
  PlaceScreen({Key? key, required this.place}) : super(key: key);

  Widget hotspotButton(
      {String? text, IconData? icon, VoidCallback? onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(Colors.black38),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Icon(icon),
          onPressed: onPressed,
        ),
        text != null
            ? Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Center(child: Text(text)),
              )
            : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    precacheImage(
      Image.asset(place.imgUrl).image,
      context,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: SizedBox(
                width: double.infinity,
                height: size.height * 0.60,
                child: Panorama(
                  child: Image.asset(place.imgUrl),
                  hotspots: [
                    Hotspot(
                        latitude: place.latitude,
                        longitude: place.longitude,
                        width: 90,
                        height: 75.0,
                        widget: hotspotButton(
                            icon: Icons.currency_bitcoin,
                            onPressed: () {
                              coinController.increment();
                              Get.snackbar(
                                'Congratulations!',
                                'add 1 coin',
                                snackPosition: SnackPosition.BOTTOM,
                                duration: const Duration(seconds: 1),
                              );
                            }))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => PlaceDetailScreen(
                      place: place,
                    ));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(place.description),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          place.address,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => IconButton(
                    onPressed: () {
                      userCat.likes.contains(place.title)
                          ? likeController.offLike(place)
                          : likeController.onLike(place);
                    },
                    icon: userCat.likes.contains(place.title)
                        ? Icon(CupertinoIcons.heart_fill)
                        : Icon(CupertinoIcons.heart),
                    color: Colors.red,
                    iconSize: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
