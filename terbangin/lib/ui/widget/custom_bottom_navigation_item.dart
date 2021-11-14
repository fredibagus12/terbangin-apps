// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';

import 'package:provider/src/provider.dart';
import 'package:terbangin/cubit/page_cubit.dart';
import 'package:terbangin/shared/theme.dart';

class CustomBottomNavigationitem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomBottomNavigationitem({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: prefer_const_constructors
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? kPrimaryColor
                  : kTransparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
