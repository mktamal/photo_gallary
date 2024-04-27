import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<ImageData> imageDataList = [
      ImageData(fileName: 'mood.jpg', imageTitle: 'Mood',description: 'Mood Description'),
      ImageData(fileName: 'aesthetic.jpg',imageTitle: 'Aesthetic',description: 'Aesthetic Description'),
      ImageData(fileName: 'animals.jpg',imageTitle: 'Animals',description: 'Animals Description'),
      ImageData(fileName: 'city.jpg',imageTitle: 'City',description:'City Description'),
      ImageData(fileName: 'travel.jpg',imageTitle: 'Travel',description:'Travel Description'),
      ImageData(fileName: 'sky.jpg',imageTitle: 'Sky',description:'Sky Description'),
      ImageData(fileName: 'road.jpg',imageTitle: 'Road',description:'Road Description'),
      ImageData(fileName: 'flowers.jpg',imageTitle: 'Flowers',description:'Flowers Description'),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(429, 98),
        child: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Container(
            width: 201,
            height: 39,
            margin: const EdgeInsets.only(top: 39),
            child: const Text(
              'Photo Gallery',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              // do something
            },
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(
                left: 17.24,
                top: 29,
              ),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                //do something
              },
              child: Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(top: 29, right: 17.24),
                child: const Icon(Icons.more_vert, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: HomeScreenBody(imageDataList: imageDataList),

    );
  }
}
