import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;
  const PhotoItem({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
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
                // ignore: prefer_const_constructors
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
