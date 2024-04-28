import 'package:flutter/material.dart';
import '../classes/image_data.dart';

class ImageGrid extends StatelessWidget {

  final ImageData? imageData;

  const ImageGrid({super.key, this.imageData});

  @override
  Widget build(BuildContext context) {
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
}
