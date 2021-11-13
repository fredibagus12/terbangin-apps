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

    return ListView(
      children: [
        header(),
      ],
    );
  }
}
