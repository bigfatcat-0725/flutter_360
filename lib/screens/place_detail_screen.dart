import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text('Place Detail Screen'),
          ),
        ));
  }
}
