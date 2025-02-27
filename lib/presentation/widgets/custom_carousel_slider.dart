import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    final imageItem = [
      ImageItems(imageUrl: "https://i.postimg.cc/8zkJB8bY/caro2.jpg"),
      ImageItems(imageUrl: "https://i.postimg.cc/Dyn8nVRz/caro3.png"),
      ImageItems(imageUrl: "https://i.postimg.cc/4yLCDhrV/caro4.png"),
    ];
    return CarouselSlider(
      items: imageItem,
      options: CarouselOptions(autoPlay: true),
    );
  }
}

class ImageItems extends StatelessWidget {
  final String imageUrl;
  const ImageItems({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
