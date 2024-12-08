import 'package:flutter/material.dart';
import 'package:metro_uio/src/presentation/layouts/main/main_layout.dart';
import 'package:metro_uio/src/presentation/screens/home/components/account_information.dart';
import 'package:metro_uio/src/presentation/screens/home/components/home_appbar.dart';
import 'package:metro_uio/src/presentation/widgets/card/balance_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      child: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  BalanceCard(),
                  SizedBox(height: 20),
                  AccountInformation(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
