// ignore_for_file: unused_element, duplicate_ignore, dead_code

import 'package:flutter/material.dart';
import 'package:terbangin/shared/theme.dart';
import 'package:terbangin/ui/widget/custom_button.dart';
import 'package:terbangin/ui/widget/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: unused_element
    Widget title() {
      // ignore: avoid_unnecessary_containers
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Ikuti dan \nNikmati Perjalananmu',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      // ignore: non_constant_identifier_names
      Widget InputNama() {
        // ignore: prefer_const_constructors
        return CustomtextFormField(
          text: 'Nama Lengkap',
          hintText: 'Isikan Nama Lengkap Kamu',
        );
      }

      // ignore: non_constant_identifier_names
      Widget InputEmail() {
        // ignore: prefer_const_constructors
        return CustomtextFormField(
          text: 'Alamat Email',
          hintText: 'Isikan alamat Email Kamu',
        );
      }

      // ignore: non_constant_identifier_names
      Widget KataSandi() {
        // ignore: prefer_const_constructors
        return CustomtextFormField(
          text: 'Katasandi',
          hintText: 'IsikanKatasandi Kamu',
          obsecure: true,
        );
      }

      // ignore: non_constant_identifier_names
      Widget Inputhobi() {
        // ignore: prefer_const_constructors
        return CustomtextFormField(
          text: 'Hobi',
          hintText: 'Isikan Hobi Kamu',
        );
      }

      Widget submitButton() {
        // ignore: sized_box_for_whitespace
        return CustomButton(
          title: 'mulai terbang Skarang',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      Widget sdkButton() {
        return Container(
          alignment: Alignment.center,
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            bottom: 73,
            top: 50,
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

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            InputNama(),
            InputEmail(),
            KataSandi(),
            Inputhobi(),
            submitButton(),
            sdkButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
