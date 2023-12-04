import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:orzu_grand/generated/assets.dart';
import 'package:orzu_grand/screens/viewpager.dart';
import 'package:orzu_grand/utils/constants.dart';
import 'package:orzu_grand/utils/utils.dart';
import 'package:orzu_grand/widgets/banner_1.dart';
import 'package:orzu_grand/widgets/banner_2.dart';
import 'package:orzu_grand/widgets/banner_3.dart';
import 'package:orzu_grand/widgets/blog_widget.dart';
import 'package:orzu_grand/widgets/swipe_banner.dart';

import '../../widgets/bottom_description_view.dart';
import '../../widgets/offer_widget.dart';
import '../../widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: COLOR_BACKGROUND,
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  //AppBar
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              CherryToast.info(title: Text("Location Setting", style: TextStyle(color: Colors.black)))
                                  .show(context);
                            },
                            padding: EdgeInsets.all(0),
                            icon: Image.asset(
                              Assets.iconsLocation,
                              width: 22,
                              height: 22,
                            )),
                        const Expanded(
                          child: Text(
                            "ORZUGRAND",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: COLOR_PRIMARY, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              CherryToast.success(
                                  title: Text("My Notifications", style: TextStyle(color: Colors.black)))
                                  .show(context);
                            },
                            padding: EdgeInsets.all(0),
                            icon: Image.asset(Assets.iconsMessages))
                      ],
                    ),
                  ),
                  //user title
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          Assets.iconsProfile,
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Здравствуйте, ",
                          style: TextStyle(color: COLOR_BLACK, fontSize: 16),
                        ),
                        const Text(
                          "Дониёр",
                          style: TextStyle(color: COLOR_GREEN, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  //Banners for order list
                  const SizedBox(
                    height: 160,
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Banner1(), Banner2(), Banner3()],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration:
                      const BoxDecoration(color: COLOR_WHITE, borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Column(
                        children: [
                          SearchWidget(), //SearchView
                          OfferWidget(), //Offer Carousel View
                          MaterialButton(
                            height: 40,
                            minWidth: getScreenWidth(context) - 32,
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                            onPressed: () {
                              CherryToast.warning(title: Text("Все акции", style: TextStyle(color: Colors.black)))
                                  .show(context);
                            },
                            color: COLOR_PRIMARY,
                            child: const Text(
                              "Все акции",
                              style: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 40.0, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Товар дня",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: COLOR_BLACK, fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "22:33:15",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: COLOR_ICON,
                                      letterSpacing: 1.8,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SwipeBanner(),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(Assets.imagesPlaystationCircle),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset(Assets.imagesIphone),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset(Assets.imagesKreslo),
                            ],
                          ),
                          Container(
                            alignment: AlignmentDirectional.centerStart,
                            padding: const EdgeInsets.only(left: 16, top: 20),
                            child: const Text(
                              "Рекомендуем вам",
                              style: TextStyle(color: COLOR_BLACK, fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const RecommendsViewPager(),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0, bottom: 14, top: 30),
                            child: Row(
                              children: [
                                Text(
                                  "ORZU",
                                  style: TextStyle(color: COLOR_GREEN, fontWeight: FontWeight.w500, fontSize: 22),
                                ),
                                Text(
                                  "BLOG ",
                                  style: TextStyle(color: COLOR_PRIMARY, fontWeight: FontWeight.w500, fontSize: 22),
                                )
                              ],
                            ),
                          ),
                          const BlogWidget(),
                          MaterialButton(
                            height: 40,
                            minWidth: getScreenWidth(context) - 32,
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                            onPressed: () {
                              CherryToast.warning(
                                  title: const Text("Все акции", style: TextStyle(color: Colors.black)))
                                  .show(context);
                            },
                            color: COLOR_PRIMARY,
                            child: const Text(
                              "Читать все",
                              style: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            height: 90,
                          ),
                          BottomDescriptionView()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
