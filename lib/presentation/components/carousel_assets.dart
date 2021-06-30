import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselAssets extends StatefulWidget {
  const CarouselAssets({Key? key, required this.assetsList}) : super(key: key);
  final List<String> assetsList;
  @override
  _CarouselAssetsState createState() => _CarouselAssetsState();
}

class _CarouselAssetsState extends State<CarouselAssets> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
              widget.assetsList[index],
              width: double.infinity,
              fit: BoxFit.cover,
            );
          },
          itemCount: widget.assetsList.length,
          options: CarouselOptions(
              autoPlay: true,
              height: double.infinity,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 8),
              viewportFraction: 1,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              }),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width,
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSmoothIndicator(
                activeIndex: _currentIndex,
                count: widget.assetsList.length,
                effect: WormEffect(
                  activeDotColor: Theme.of(context).primaryColor,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
