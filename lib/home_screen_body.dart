import 'package:flutter/material.dart';
import 'package:photo_gallary/image_detail.dart';
import 'classes/image_data.dart';

class HomeScreenBody extends StatelessWidget {
  final List<ImageData> imageDataList;

  const HomeScreenBody({super.key, required this.imageDataList});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    //determine number items display in a raw
    int noOfItemsToShow = screenWidth > 600 ? 4 : 2;

    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: noOfItemsToShow,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: imageDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageDetailPage(
                      heading: imageDataList[index].heading,
                      imageTitle: imageDataList[index].imageTitle,
                      description: imageDataList[index].description,
                      imageFIle: imageDataList[index].fileName),
                ),
              );
            },
            child: _buildImageWithTitle(imageDataList[index]),
          );
        });
  }
}

Widget _buildImageWithTitle(ImageData? imageData) {
  return Stack(
    children: [
      Center(
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black87,
                offset: Offset(0, 15),
                blurRadius: 30,
              ),
            ],
          ),
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
  );
}
