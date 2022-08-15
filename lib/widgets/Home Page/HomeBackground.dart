import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({Key? key}) : super(key: key);

  // Build for the home pages background image
  @override
  Widget build(BuildContext context) {
    // return a sized box for carousel
    return SizedBox(
      // set height and width
      height: 335,
      width: double.infinity,
      // set child as carousel slider
      child: CarouselSlider(
        // setup carousel options
        options: CarouselOptions(
          viewportFraction: 1,
          height: 335,
          // set autoplay to true and duration to 5 secs
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
        ),
        // put all images in carousel in this item array
        items: [
          'assets/images/atlantic_challenge.jpg',
          'assets/images/green_isle.jpg',
          'assets/images/ker_vans.jpg',
          'assets/images/lovon.jpg',
          'assets/images/west_endeavour.jpg',
        ].map((e) {
          // map the array of images and return a builder with a container inside to display images
          return Builder(builder: (BuildContext context) {
            return Container(
              // set height and width of image
              height: 335,
              width: double.infinity,
              // return image
              child: Image.asset(
                // e is the map of images
                e,
                fit: BoxFit.cover,
              ),
            );
          });
        }).toList(),
      ),
    );
  }
}
