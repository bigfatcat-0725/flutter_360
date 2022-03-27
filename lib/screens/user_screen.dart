import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_360/controllers/coin_controller.dart';
import 'package:flutter_360/controllers/like_controller.dart';
import 'package:flutter_360/models/user.dart';
import 'package:flutter_360/screens/like_screen.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  final CoinController coinController = CoinController();
  final LikeController likeController = LikeController();
  UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'bigfatcat0725@gmail.com',
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
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Icon(
                          Icons.currency_bitcoin,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(userCat.coin.toString()),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(() => LikeScreen());
                        },
                        icon: Icon(CupertinoIcons.heart_fill),
                        color: Colors.red,
                        iconSize: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(() => Text(userCat.likes.length.toString())),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 60,
                child: Center(
                  child: Text(
                    'Log Out',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
