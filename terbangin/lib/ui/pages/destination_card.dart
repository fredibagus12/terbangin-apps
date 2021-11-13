import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final double rating;
  const DestinationCard(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.city,
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(bottom: 20),
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              // ignore: prefer_const_constructors
              image: DecorationImage(
                // ignore: prefer_const_constructors
                image: AssetImage(
                  imageUrl,
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
                      rating.toString(),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 5,
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
