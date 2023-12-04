import 'package:flutter/material.dart';
import 'package:orzu_grand/utils/constants.dart';
import 'package:orzu_grand/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class TempScreen extends StatefulWidget {
  const TempScreen({Key? key}) : super(key: key);

  @override
  _TempScreenState createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreenWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              launchUrl(Uri.parse("tel:+998911210322"));
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_in_talk, color: COLOR_GREEN,size: 34,),
                SizedBox(width: 8,),
                Text(
                  "Men bilan bog'laning",
                  style: TextStyle(
                      color: COLOR_PRIMARY, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              launchUrl(Uri.parse("https://www.linkedin.com/in/jamshid-muxtaraliev-15001526a/"));
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.link, color: COLOR_GREEN, size: 40,),
                SizedBox(width: 8,),
                Text(
                  "LinkedIn daman",
                  style: TextStyle(
                      color: COLOR_PRIMARY, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
