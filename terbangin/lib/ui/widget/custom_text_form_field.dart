import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';

class CustomtextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final bool obsecure;
  final TextEditingController controller;

  const CustomtextFormField({
    Key? key,
    required this.text,
    required this.hintText,
    this.obsecure = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          Text(
            text,
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecure,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
