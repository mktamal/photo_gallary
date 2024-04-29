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

      appBar: const CustomAppBar(
        title: 'Photo Gallery',
      ),
      body: HomeScreenBody(imageDataList: imageDataList),
    );
  }
}
