import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class OfferWidget extends StatefulWidget {
  const OfferWidget({Key? key}) : super(key: key);

  @override
  _OfferWidgetState createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: CarouselSlider(
          items: offerList
              .map((item) => Container(
              child: Image.asset(
                item.image,
                fit: BoxFit.fill,
              )))
              .toList(),
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            reverse: false,
            viewportFraction: 0.8,
            aspectRatio: 16 / 7,
            disableCenter: false,
          )),
    );
  }
}
