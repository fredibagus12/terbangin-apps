// ignore_for_file: unused_element, duplicate_ignore, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terbangin/cubit/auth_cubit.dart';
import 'package:terbangin/shared/theme.dart';
import 'package:terbangin/ui/widget/custom_button.dart';
import 'package:terbangin/ui/widget/custom_text_form_field.dart';

// ignore: must_be_immutable
class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController hobiController = TextEditingController(text: '');

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: unused_element
    Widget title() {
      // ignore: avoid_unnecessary_containers
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Sign In With Your \nExisting Account',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      // ignore: non_constant_identifier_names
      Widget InputEmail() {
        // ignore: prefer_const_constructors
        return CustomtextFormField(
          text: 'Alamat Email',
          hintText: 'Isikan alamat Email Kamu',
          controller: emailController,
        );
      }

      // ignore: non_constant_identifier_names
      Widget KataSandi() {
        // ignore: prefer_const_constructors
        return CustomtextFormField(
          text: 'Katasandi',
          hintText: 'IsikanKatasandi Kamu',
          controller: passwordController,
          obsecure: true,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButton(
              title: 'Masuk Sekarang',
              onPressed: () {
                context.read<AuthCubit>().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                      name: nameController.text,
                      hobi: hobiController.text,
                    );
              },
            );
          },
        );
      }

      Widget signupButton() {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(
              bottom: 73,
              top: 50,
            ),
            // ignore: prefer_const_constructors
            child: Text(
              'Dont Have an Account? Sign Up',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline,
              ),
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
            InputEmail(),
            KataSandi(),
            submitButton(),
            signupButton(),
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
