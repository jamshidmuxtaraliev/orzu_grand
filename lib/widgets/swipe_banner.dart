import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import '../generated/assets.dart';
import '../utils/constants.dart';

class SwipeBanner extends StatefulWidget {
  const SwipeBanner({Key? key}) : super(key: key);

  @override
  _SwipeBannerState createState() => _SwipeBannerState();
}

class _SwipeBannerState extends State<SwipeBanner> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 315,
      child: Swiper(
        itemBuilder: (context, index) {
          return swipeBanner();
        },
        itemCount: 3,
        itemWidth: 300.0,
        axisDirection: AxisDirection.right,
        itemHeight: 315,
        layout: SwiperLayout.STACK,
      ),
    );
  }

  Widget swipeBanner() {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 4),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4, blurStyle: BlurStyle.outer)],
          color: COLOR_WHITE,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Image.asset(Assets.imagesPlaystation),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 15),
                child: Text(
                  "Микроволновая печь соло Gorenje MO17E1W",
                  style: TextStyle(color: COLOR_BLACK, fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2 000 000 сум",
                            style: TextStyle(
                                color: COLOR_BLACK,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "1 750 000 сум",
                            style: TextStyle(color: COLOR_PRIMARY, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      height: 40,
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                      onPressed: () {
                        CherryToast.error(
                                backgroundColor: Colors.red.withOpacity(0.5),
                                toastPosition: Position.bottom,
                                title: const Text("Add to CART", style: TextStyle(color: Colors.black)))
                            .show(context);
                      },
                      color: COLOR_PRIMARY,
                      child: Image.asset(Assets.iconsShoppingCartFill),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
