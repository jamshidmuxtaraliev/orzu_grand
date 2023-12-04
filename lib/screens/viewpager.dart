import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:orzu_grand/utils/utils.dart';
import 'package:orzu_grand/widgets/product_item_view.dart';

import '../utils/constants.dart';

class RecommendsViewPager extends StatefulWidget {
  const RecommendsViewPager({Key? key}) : super(key: key);

  @override
  _RecommendsViewPagerState createState() => _RecommendsViewPagerState();
}

class _RecommendsViewPagerState extends State<RecommendsViewPager> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const TabBar(
            indicatorColor: COLOR_PRIMARY,
            unselectedLabelColor: COLOR_ICON,
            labelColor: COLOR_PRIMARY,
            tabs: [
              Tab(text: "Новинки"),
              Tab(text: "Популярное"),
              Tab(text: "Скидки + Рассрочка"),
            ],
            isScrollable: true,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height:530,
            child: TabBarView(viewportFraction: 0.9, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 16, left: 4, bottom: 16),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4, blurStyle: BlurStyle.outer)
                    ], color: COLOR_WHITE, borderRadius: const BorderRadius.all(Radius.circular(8))),
                    child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          return const ProductItemView();
                        }),
                  ),
                  MaterialButton(
                    height: 40,
                    minWidth: getScreenWidth(context) - 48,
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      CherryToast.error(
                              backgroundColor: Colors.red.withOpacity(0.5),
                              title: const Text("Add to CART", style: TextStyle(color: Colors.black)))
                          .show(context);
                    },
                    color: COLOR_PRIMARY,
                    child: const Text(
                      "Смотреть все 15",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 16, left: 4, bottom: 16),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4, blurStyle: BlurStyle.outer)
                    ], color: COLOR_WHITE, borderRadius: const BorderRadius.all(Radius.circular(8))),
                    child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          return const ProductItemView();
                        }),
                  ),
                  MaterialButton(
                    height: 40,
                    minWidth: getScreenWidth(context) - 48,
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      CherryToast.error(
                              backgroundColor: Colors.red.withOpacity(0.5),
                              title: const Text("Add to CART", style: TextStyle(color: Colors.black)))
                          .show(context);
                    },
                    color: COLOR_PRIMARY,
                    child: const Text(
                      "Смотреть все 15",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 16, left: 4, bottom: 16),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4, blurStyle: BlurStyle.outer)
                    ], color: COLOR_WHITE, borderRadius: const BorderRadius.all(Radius.circular(8))),
                    child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          return const ProductItemView();
                        }),
                  ),
                  MaterialButton(
                    height: 40,
                    minWidth: getScreenWidth(context) - 48,
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      CherryToast.error(
                              backgroundColor: Colors.red.withOpacity(0.5),
                              title: const Text("Add to CART", style: TextStyle(color: Colors.black)))
                          .show(context);
                    },
                    color: COLOR_PRIMARY,
                    child: const Text(
                      "Смотреть все 15",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
