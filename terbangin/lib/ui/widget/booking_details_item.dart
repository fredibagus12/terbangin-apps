import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';

class BookingDetailsItem extends StatelessWidget {
  final String text;
  final String details;
  final Color textcolor;
  const BookingDetailsItem({
    Key? key,
    required this.text,
    required this.details,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/check.png',
                ),
              ),
            ),
          ),
          Text(
            text,
            style: primaryTextStyle,
          ),
          const Spacer(),
          Text(
            details,
            style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
              color: textcolor,
            ),
          ),
        ],
      ),
    );
  }
}
