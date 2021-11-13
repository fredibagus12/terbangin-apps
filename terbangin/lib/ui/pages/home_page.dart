import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: (Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apa Kabar, \nFredi Bagus',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Bagaimana Kabarmu Hari ini?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                ],
              )),
            ),
            Container(
              width: 60,
              height: 60,

              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: AssetImage(
                    'assets/image_profil.png',
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 200,
              height: 323,
              margin: EdgeInsets.only(
                left: defaultMargin,
              ),
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: kWhiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    width: 180,
                    height: 220,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      // ignore: prefer_const_constructors
                      image: DecorationImage(
                        // ignore: prefer_const_constructors
                        image: AssetImage(
                          'assets/image_destination_1.png',
                        ),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 55,
                        height: 30,
                        // ignore: prefer_const_constructors

                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          // ignore: prefer_const_constructors

                          // ignore: prefer_const_constructors
                          borderRadius: BorderRadius.only(
                            // ignore: prefer_const_constructors
                            bottomLeft: Radius.circular(18),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              // ignore: prefer_const_constructors
                              margin: EdgeInsets.only(right: 2),
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                // ignore: prefer_const_constructors
                                image: DecorationImage(
                                  // ignore: prefer_const_constructors
                                  image: AssetImage(
                                    'assets/star.png',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '4,8',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
      ],
    );
  }
}
