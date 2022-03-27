import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_360/models/place.dart';
import 'package:flutter_360/screens/place_screen.dart';
import 'package:flutter_360/screens/user_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              '360°',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 15,
              ),
            ),
            Text(
              'HOTPLACE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_alt_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Get.to(() => UserScreen());
            },
            icon: const Icon(Icons.person),
            color: Colors.black,
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView.separated(
            itemCount: placeList.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Get.to(() => PlaceScreen(place: placeList[index]));
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 130,
                            height: 130,
                            child: Image.asset(
                              placeList[index].thumbnail,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                placeList[index].title,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                placeList[index].address,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
