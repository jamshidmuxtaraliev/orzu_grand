import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ViewpagerItem extends StatefulWidget {
  const ViewpagerItem({Key? key}) : super(key: key);

  @override
  _ViewpagerItemState createState() => _ViewpagerItemState();
}

class _ViewpagerItemState extends State<ViewpagerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4, blurStyle: BlurStyle.outer)],
          color: COLOR_WHITE,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
    );
  }
}
