import 'package:flutter/material.dart';
import 'package:flutter_360/controllers/like_controller.dart';
import 'package:flutter_360/models/place.dart';
import 'package:flutter_360/models/user.dart';
import 'package:flutter_360/screens/place_screen.dart';
import 'package:get/get.dart';

class LikeScreen extends StatelessWidget {
  final LikeController likeController = LikeController();
  LikeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Your Like List (${userCat.likes.length})',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Center(
            child: ListView.builder(
                itemCount: userCat.likes.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      placeList.forEach((element) {
                        if (element.title == userCat.likes[index]) {
                          Get.to(() => PlaceScreen(place: element));
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              userCat.likePlaces[index],
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            userCat.likes[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                })),
      ),
    );
  }
}
