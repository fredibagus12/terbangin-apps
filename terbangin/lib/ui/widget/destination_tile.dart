import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationTile(
      {Key? key,
      required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              // ignore: prefer_const_constructors
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 5,
                ),
                // ignore: avoid_unnecessary_containers
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Row(
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
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
