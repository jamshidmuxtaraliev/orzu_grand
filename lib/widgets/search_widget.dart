import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../utils/constants.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
      height: 50,
      child: TextField(
        scrollPadding: const EdgeInsets.all(0),
        decoration: InputDecoration(
            filled: true,
            contentPadding: const EdgeInsets.all(0),
            fillColor: COLOR_BACKGROUND,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: COLOR_BACKGROUND, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: COLOR_BACKGROUND, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: COLOR_BACKGROUND, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            prefixIcon: Image.asset(
              Assets.iconsSearchNormal,
              color: COLOR_ICON,
            ),
            hintText: "Поиск товаров",
            hintStyle: const TextStyle(color: COLOR_ICON)),
      ),
    );
  }
}
