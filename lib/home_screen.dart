import 'package:flutter/material.dart';
import 'home_screen_body.dart';
import 'custom_app_bar.dart';
import 'package:photo_gallary/classes/image_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ImageData> imageDataList = [
      ImageData(
        heading: 'Mood with Nature',
        fileName: 'mood.jpg',
        imageTitle: 'Mood',
        description: 'Being in nature or even viewing scenes of nature, reduces anger fear and stress and '
            'increase pleasant feelings.',
      ),
      ImageData(
        heading: 'Aesthetic Nature',
        fileName: 'aesthetic.jpg',
        imageTitle: 'Aesthetic',
        description: 'Aesthetic Description',
      ),
      ImageData(
        heading: 'Animals in Nature',
        fileName: 'animals.jpg',
        imageTitle: 'Animals',
        description: 'Animals Description',
      ),
      ImageData(
        heading: 'City Nature',
        fileName: 'city.jpg',
        imageTitle: 'City',
        description: 'City Description',
      ),
      ImageData(
        heading: 'Travel in Nature',
        fileName: 'travel.jpg',
        imageTitle: 'Travel',
        description: 'Travel Description',
      ),
      ImageData(
        heading: 'Sky is the Limit',
        fileName: 'sky.jpg',
        imageTitle: 'Sky',
        description: 'Sky Description',
      ),
      ImageData(
        heading: 'Never Ending Road',
        fileName: 'road.jpg',
        imageTitle: 'Road',
        description: 'Road Description',
      ),
      ImageData(
        heading: 'Flowers in Nature',
        fileName: 'flowers.jpg',
        imageTitle: 'Flowers',
        description: 'Flowers Description',
      ),
    ];

    return Scaffold(
      /*appBar: PreferredSize(
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
      ),*/

      appBar: const CustomAppBar(
        title: 'Photo Gallery',
      ),
      body: HomeScreenBody(imageDataList: imageDataList),
    );
  }
}
