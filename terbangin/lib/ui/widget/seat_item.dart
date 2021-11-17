import 'package:flutter/material.dart';
import 'package:terbangin/cubit/seat_cubit.dart';
import 'package:terbangin/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  // final int status;
  final String id;
  final bool isAvailable;
  const SeatItem({
    Key? key,
    // required this.status,
    this.isAvailable = true,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool isSelected = context.read<SeatCubit>().isSelected(id);
    // ignore: non_constant_identifier_names
    backgroundColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kUnavailableColor;
        }
      }
    }

    // ignore: non_constant_identifier_names
    BorderColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    // ignore: non_constant_identifier_names
    Child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: BorderColor(),
            width: 2,
          ),
        ),
        child: Child(),
      ),
    );
  }
}
