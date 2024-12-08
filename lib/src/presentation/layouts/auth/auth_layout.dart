import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metro_uio/src/application/core/constants/images.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  final String title;
  final bool canBack;
  const AuthLayout({
    required this.title,
    required this.child,
    this.canBack = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: ListView(
                reverse: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Image.asset(Images.bgImage),
                  ...List.generate(
                    10,
                    (index) => Image.asset(Images.bgTopImage),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        Images.logoImage,
                        width: MediaQuery.of(context).size.width * 0.25,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      child,
                    ],
                  ),
                ),
              ),
            ),
            if (canBack)
              Positioned(
                top: MediaQuery.of(context).padding.top,
                child: IconButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white30),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  icon: const Icon(CupertinoIcons.back),
                  onPressed: () => {},
                ),
              ),
          ],
        ),
      ),
    );
  }
}
