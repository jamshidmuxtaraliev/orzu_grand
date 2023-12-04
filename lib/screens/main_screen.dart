import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:orzu_grand/generated/assets.dart';
import 'package:orzu_grand/screens/temp_screen/temp_screen.dart';
import 'package:orzu_grand/screens/viewpager.dart';
import 'package:orzu_grand/utils/constants.dart';
import 'package:orzu_grand/utils/utils.dart';
import 'package:orzu_grand/widgets/banner_1.dart';
import 'package:orzu_grand/widgets/banner_2.dart';
import 'package:orzu_grand/widgets/banner_3.dart';
import 'package:orzu_grand/widgets/blog_widget.dart';
import 'package:orzu_grand/widgets/swipe_banner.dart';

import '../widgets/bottom_description_view.dart';
import '../widgets/offer_widget.dart';
import '../widgets/search_widget.dart';
import 'home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  List<Widget> screens = [];
  var selectedScreenIndex = 0;

  @override
  void initState() {
    screens = [HomeScreen(), TempScreen(), TempScreen(), TempScreen(), TempScreen()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: COLOR_BACKGROUND,
        body: screens[selectedScreenIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: COLOR_PRIMARY,
          selectedIconTheme: const IconThemeData(color: COLOR_PRIMARY),
          unselectedIconTheme: IconThemeData(color: COLOR_ICON),
          unselectedItemColor: COLOR_ICON,
          elevation: 5,
          onTap: (index) {
            setState(() {
              selectedScreenIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(Assets.iconsHome),
                ),
                label: "Главная"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(Assets.iconsSearchStatus),
                ),
                label: "Каталог"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(Assets.iconsShoppingCart),
                ),
                label: "Корзина"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(Assets.iconsHeart),
                ),
                label: "Избранное"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(Assets.iconsUser),
                ),
                label: "Профиль"),
          ],
          currentIndex: selectedScreenIndex,
        ),
      ),
    );
  }
}
