import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:orzu_grand/generated/assets.dart';

import '../utils/constants.dart';

class Banner3 extends StatefulWidget {
  const Banner3({Key? key}) : super(key: key);

  @override
  _Banner3State createState() => _Banner3State();
}

class _Banner3State extends State<Banner3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      padding: const EdgeInsets.only(top: 15, left: 15),
      width: 292,
      height: 160,
      decoration: const BoxDecoration(color: COLOR_WHITE, borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Готов к выдаче",
                style: TextStyle(color: COLOR_PRIMARY, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Заказ №10021122",
                style: TextStyle(color: COLOR_ICON, fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Самовывоз до 29 марта",
                style: TextStyle(color: COLOR_BLACK, fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                height: 34,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                onPressed: () {
                  CherryToast.success(title: Text("Забрать заказ", style: TextStyle(color: Colors.black)))
                      .show(context);
                },
                color: COLOR_PRIMARY,
                child: const Text(
                  "Забрать заказ",
                  style: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.bold, fontSize: 14),
                ),
              )
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: COLOR_GREEN.withOpacity(0.4), borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Icon(
                    Icons.check_rounded,
                    color: COLOR_GREEN,
                  ),
                ),
                Expanded(child: Container()),
                Image.asset(Assets.iconsNotificationBing)
              ],
            ),
          )
        ],
      ),
    );
  }
}
