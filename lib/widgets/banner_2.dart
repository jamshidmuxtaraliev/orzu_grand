import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:orzu_grand/generated/assets.dart';

import '../utils/constants.dart';

class Banner2 extends StatefulWidget {
  const Banner2({Key? key}) : super(key: key);

  @override
  _Banner2State createState() => _Banner2State();
}

class _Banner2State extends State<Banner2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      padding: const EdgeInsets.only(top: 15, left: 15),
      width: 292,
      height: 160,
      decoration: const BoxDecoration(color: COLOR_WHITE, borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Как вам работа приложения?",
            style: TextStyle(color: COLOR_PRIMARY, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "Нам важно ваше мнение",
            style: TextStyle(color: COLOR_ICON, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Expanded(child: Container()),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  MaterialButton(
                    height: 34,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      CherryToast.success(title: Text("Оценить", style: TextStyle(color: Colors.black))).show(context);
                    },
                    color: COLOR_PRIMARY,
                    child: const Text(
                      "Оценить",
                      style: TextStyle(color: COLOR_WHITE, fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              Expanded(child: Container()),
              Image.asset(Assets.iconsStar)
            ],
          ),
        ],
      ),
    );
  }
}
