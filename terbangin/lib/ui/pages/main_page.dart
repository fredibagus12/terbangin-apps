// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terbangin/cubit/page_cubit.dart';
import 'package:terbangin/shared/theme.dart';
import 'package:terbangin/ui/pages/home_page.dart';
import 'package:terbangin/ui/pages/setting_page.dart';
import 'package:terbangin/ui/pages/transaction_page.dart';
import 'package:terbangin/ui/pages/wallet_page.dart';
import 'package:terbangin/ui/widget/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget BuildContent(int currentindex) {
      switch (currentindex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigationitem(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigationitem(
                index: 1,
                imageUrl: 'assets/icon_book.png',
              ),
              CustomBottomNavigationitem(
                index: 2,
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigationitem(
                index: 3,
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (BuildContext context, currentindex) => Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            // ignore: prefer_const_constructors
            BuildContent(currentindex),
            customBottomNavigation(),
          ],
        ),
      ),
    );
  }
}
