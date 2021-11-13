import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_home.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_book.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_card.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_setting.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          // ignore: prefer_const_constructors
          Text('slnv'),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
