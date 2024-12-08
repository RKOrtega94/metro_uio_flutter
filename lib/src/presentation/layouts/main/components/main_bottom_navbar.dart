import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metro_uio/src/application/core/constants/icons.dart';

List<String> iconsList = [
  AppIcons.homeIcon,
  AppIcons.coinsIcon,
  AppIcons.trainIcon,
  AppIcons.profileIcon,
];

class MainBottomNavbar extends StatelessWidget {
  const MainBottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      activeIndex: 0,
      onTap: (index) {},
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      backgroundColor: Colors.blue[900],
      itemCount: iconsList.length,
      tabBuilder: (index, isActive) => Padding(
        padding: EdgeInsets.all(isActive ? 15 : 16),
        child: SvgPicture.asset(
          iconsList[index],
          colorFilter: ColorFilter.mode(
            isActive ? Colors.white : Colors.white.withOpacity(0.5),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
