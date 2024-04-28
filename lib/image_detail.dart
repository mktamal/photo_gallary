import 'package:flutter/material.dart';
import 'package:photo_gallary/custom_app_bar.dart';
import 'custom_widgets/image_grid.dart';
import 'classes/image_data.dart';

class ImageDetailPage extends StatelessWidget {
  final String? imageTitle;
  final String? heading;
  final String? description;
  final String? imageFIle;

  const ImageDetailPage({super.key,
    this.imageTitle,
    this.heading,
    this.description,
    this.imageFIle});

  @override
  Widget build(BuildContext context) {

    List<ImageData> suggestionImageList = [
      ImageData(
        heading: 'Mood with Nature',
        fileName: 'mood.jpg',
        imageTitle: 'Mood',
        description:
        'Being in nature or even viewing scenes of nature, reduces anger fear and stress and '
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
    ];



    return Scaffold(
      appBar: CustomAppBar(
        title: imageTitle,
        onLandingPressed: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 325,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black87,
                    offset: Offset(5, 12),
                    blurRadius: 35,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'images/${imageFIle ?? ''}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading ?? '',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    description ?? '',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        //do something
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.black87,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'See More',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 10, 0),
              child: const Text(
                'Suggestion',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
            ),


            // show suggestion image
            Container(
              margin: const EdgeInsets.all(20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.9,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: suggestionImageList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ImageDetailPage(
                                    heading: suggestionImageList[index].heading,
                                    imageFIle: suggestionImageList[index].fileName,
                                    description: suggestionImageList[index].description,
                                    imageTitle: suggestionImageList[index].imageTitle,
                                  ),
                            ),
                          );
                        },
                        child: ImageGrid(imageData: suggestionImageList[index]),
                      );
                    }),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
