import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metro_uio/src/application/core/constants/icons.dart';
import 'package:metro_uio/src/application/core/constants/images.dart';
import 'package:metro_uio/src/presentation/layouts/main/components/main_bottom_navbar.dart';

class MainLayout extends StatefulWidget {
  final Widget child;
  const MainLayout({
    required this.child,
    super.key,
  });

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blue[900]!,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const MainBottomNavbar(),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        onPressed: () {},
        backgroundColor: Colors.red,
        child: SvgPicture.asset(
          AppIcons.qrIcon,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          Positioned.fill(
            bottom: -kBottomNavigationBarHeight,
            child: ListView(
              reverse: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: kBottomNavigationBarHeight - 10,
                  width: MediaQuery.of(context).size.width,
                  child: const Image(
                    image: AssetImage(
                      Images.bgTopImage,
                    ),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Image.asset(Images.bgImage),
                ...List.generate(
                  10,
                  (index) => Image.asset(Images.bgTopImage),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: widget.child,
          ),
        ],
      ),
    );
  }
}
