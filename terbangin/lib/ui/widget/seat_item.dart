import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: kUnavailableColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
