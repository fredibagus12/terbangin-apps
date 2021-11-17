import 'package:flutter/material.dart';
import 'package:terbangin/cubit/seat_cubit.dart';
import 'package:terbangin/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  final int status;
  final String id;
  const SeatItem({
    Key? key,
    required this.status,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    backgroundColor() {
      switch (status) {
        case 0:
          return kUnavailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;

        default:
          return kUnavailableColor;
      }
    }

    // ignore: non_constant_identifier_names
    BorderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;

        default:
          return kUnavailableColor;
      }
    }

    // ignore: non_constant_identifier_names
    Child() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return const SizedBox();

        default:
          return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        context.read<SeatCubit>().selectSeat(id);
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
