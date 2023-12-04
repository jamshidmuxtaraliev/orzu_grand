import 'package:flutter/material.dart';

import '../generated/assets.dart';

class BlogWidget extends StatefulWidget {
  const BlogWidget({Key? key}) : super(key: key);

  @override
  _BlogWidgetState createState() => _BlogWidgetState();
}

class _BlogWidgetState extends State<BlogWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 166,
      child: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Container(
                margin: const EdgeInsets.only(left: 12),
                child: Image.asset(Assets.imagesBlog));
          }),
    );
  }
}
