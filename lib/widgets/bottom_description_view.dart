import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../utils/constants.dart';

class BottomDescriptionView extends StatefulWidget {
  const BottomDescriptionView({Key? key}) : super(key: key);

  @override
  _BottomDescriptionViewState createState() => _BottomDescriptionViewState();
}

class _BottomDescriptionViewState extends State<BottomDescriptionView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 11, right: 11, bottom: 8),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60, left: 4, right: 4, bottom: 4),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4, blurStyle: BlurStyle.outer)],
                color: COLOR_WHITE,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "У нас всё!",
                          style: TextStyle(fontSize: 14, color: COLOR_GREEN, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          "Хватит листать, переходи в каталог.",
                          style: TextStyle(fontSize: 14, color: COLOR_BLACK, fontWeight: FontWeight.w500),
                        ),
                        MaterialButton(
                          height: 28,
                          minWidth: 183,
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                          onPressed: () {
                            CherryToast.warning(title: const Text("Каталог", style: TextStyle(color: Colors.black)))
                                .show(context);
                          },
                          color: COLOR_PRIMARY,
                          child: const Text(
                            "Каталог",
                            style: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 1, child: Container())
              ],
            ),
          ),
          Positioned(
              right: 8,
              bottom: 20,
              child: Image.asset(
                Assets.imagesUndrawNoteList,
              ))
        ],
      ),
    );
  }
}
