import 'package:flutter/material.dart';
import 'package:flutter_360/models/place.dart';
import 'package:get/get.dart';

class PlaceDetailScreen extends StatelessWidget {
  final Place place;
  const PlaceDetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  place.thumbnail,
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  place.title,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(place.detail),
              ],
            ),
          ),
        ));
  }
}
