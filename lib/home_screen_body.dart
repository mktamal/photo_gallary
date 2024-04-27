import 'package:flutter/material.dart';

class ImageData {
  final String? fileName;
  final String? imageTitle;
  final String? description;

  ImageData({this.fileName, this.imageTitle, this.description});
}

class HomeScreenBody extends StatelessWidget {
  final List<ImageData> imageDataList;

  const HomeScreenBody({super.key, required this.imageDataList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: imageDataList.length,
        itemBuilder: (context, index) {
          return _buildImageWithTitle(imageDataList[index]);
        });
  }
}

Widget _buildImageWithTitle(ImageData? imageData) {
  return Container(
    height: 180,
    width: 180,
    decoration: BoxDecoration(
      //color: Colors.blue,
      borderRadius: BorderRadius.circular(30),
      boxShadow: const [
        BoxShadow(
          color: Colors.black87,
          offset: Offset(0, 15),
          blurRadius: 30,
        ),
      ],
    ),
    child: Stack(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'images/${imageData?.fileName}',
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 30,
          child: SizedBox(
            width: 133,
            height: 27,
            child: Text(
              imageData?.imageTitle ?? '',
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
