import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';

class DestinationTile extends StatelessWidget {
  const DestinationTile({Key? key}) : super(key: key);

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
                image: const AssetImage(
                  'assets/image_destination_1.png',
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
                  'Danau Beratan',
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
                  'singaraja',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Row(
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
                '7',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
