import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:orzu_grand/utils/constants.dart';

import '../generated/assets.dart';

class ProductItemView extends StatefulWidget {
  const ProductItemView({Key? key}) : super(key: key);

  @override
  _ProductItemViewState createState() => _ProductItemViewState();
}

class _ProductItemViewState extends State<ProductItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        color: COLOR_WHITE,
      ),
      child: Row(
        children: [
          Image.asset(Assets.imagesPlisos, width: 90, height: 80,),
          const SizedBox(width: 8,),
          Expanded(
              child: Column(
            children: [
              const Text(
                "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 12,),
              Row(
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
                    height: 32,
                    minWidth: 65,
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      CherryToast.error(
                              backgroundColor: Colors.red.withOpacity(0.5),
                              toastPosition: Position.bottom,
                              title: const Text("Add to CART", style: TextStyle(color: Colors.black)))
                          .show(context);
                    },
                    color: COLOR_PRIMARY,
                    child: Image.asset(Assets.iconsShoppingCartFill, width: 25, height: 25,),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
