import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BannersView extends StatelessWidget {
  BannersView({Key? key}) : super(key: key);
  List imageList = [
    "aseets/image/banner2.jpg",
    "aseets/image/banner3.jpg",
    "aseets/image/banner4.jpg",
    "aseets/image/banner8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4.5,
      width: double.infinity,
      child: CarouselSlider.builder(
          itemCount: imageList.length,
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 1.5,
            enlargeCenterPage: true,
            autoPlay: false,
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return SizedBox(
              width: 400,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        imageList[index],
                      ),
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.1),
                        BlendMode.softLight,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
