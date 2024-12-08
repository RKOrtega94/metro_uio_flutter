import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metro_uio/src/application/core/constants/images.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: constraints.maxWidth,
        height: constraints.maxWidth * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.rectangle,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF223E77),
              Color(0xFF116198),
              Color(0xFF116198),
              Color(0xFF223E77),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                bottom: -5,
                left: -10,
                right: -10,
                child: Image.asset(
                  Images.texture,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  filterQuality: FilterQuality.high,
                  colorBlendMode: BlendMode.overlay,
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF223E77).withOpacity(0.9),
                        const Color(0xFF116198).withOpacity(0.9),
                        const Color(0xFF116198).withOpacity(0.9),
                        const Color(0xFF223E77).withOpacity(0.9),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: SizedBox(
                  width: constraints.maxWidth * 0.25,
                  child: SvgPicture.asset(
                    Images.logoImage,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 0,
                    maxWidth: double.infinity,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.green[100]!.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Perfil: Estándar - Tarifa base',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 25,
                right: 15,
                child: Container(
                  alignment: Alignment.centerRight,
                  width: constraints.maxWidth * 0.40,
                  child: AutoSizeText(
                    '\$ 10.00',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
