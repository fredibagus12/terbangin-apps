// ignore_for_file: avoid_unnecessary_c

import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';
import 'package:terbangin/ui/widget/booking_details_item.dart';
import 'package:terbangin/ui/widget/custom_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget Route() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              width: 295,
              height: 65,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/route.png',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'ITA',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Italia',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    // ignore: non_constant_identifier_names
    Widget BookingDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                      // ignore: prefer_const_constructors
                      image: AssetImage(
                        'assets/image_destination_1.png',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // ignore: duplicate_ignore
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'name',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'asa',
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
                      margin: const EdgeInsets.only(right: 2),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/star.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '5',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Penjelasan Pesanan',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            BookingDetailsItem(
              text: 'Traveler',
              details: '2 orang',
              textcolor: kPrimaryColor,
            ),
            BookingDetailsItem(
              text: 'seat',
              details: '6',
              textcolor: kGreenColor,
            ),
            BookingDetailsItem(
              text: 'vat',
              details: '4%',
              textcolor: kRedColor,
            ),
            BookingDetailsItem(
              text: 'insurance',
              details: 'NO',
              textcolor: kPrimaryColor,
            ),
            BookingDetailsItem(
              text: 'refundable',
              details: 'YES',
              textcolor: kPrimaryColor,
            ),
            BookingDetailsItem(
              text: 'price',
              details: 'IDR 2.000.000',
              textcolor: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    // ignore: non_constant_identifier_names
    Widget PaymentDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 100,
                    height: 70,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/image_card.png',
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: const EdgeInsets.only(
                              right: 6,
                            ),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_plane.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Pay',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 80.000.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(),
                        Text(
                          'Current Balance',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget payButton() {
      return CustomButton(
        title: 'Bayar Sekarang',
        onPressed: () {},
        margin: const EdgeInsets.only(top: 30),
      );
    }

    Widget sdkButton() {
      return Container(
        alignment: Alignment.center,
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          bottom: 30,
          top: 30,
        ),
        // ignore: prefer_const_constructors
        child: Text(
          'Syarat dan Ketentuan berlaku',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          Route(),
          BookingDetails(),
          PaymentDetails(),
          payButton(),
          sdkButton(),
        ],
      ),
    );
  }
}
