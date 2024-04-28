import 'package:flutter/material.dart';
import 'package:photo_gallary/classes/image_data.dart';
import 'package:photo_gallary/custom_widgets/image_grid.dart';

class ImageDetailSuggestion extends StatelessWidget {
  final List<ImageData> imageDataList;

  const ImageDetailSuggestion({super.key, required this.imageDataList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Suggestion',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: imageDataList.length,
              itemBuilder: (context, index) {
                return ImageGrid(imageData: imageDataList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
