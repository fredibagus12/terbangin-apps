import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:terbangin/cubit/auth_cubit.dart';
import 'package:terbangin/cubit/page_cubit.dart';
import 'package:terbangin/shared/theme.dart';
import 'package:terbangin/ui/widget/custom_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kRedColor,
              content: Text(state.error),
            ),
          );
        } else if (state is AuthInitial) {
          context.read<PageCubit>().setPage(0);
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          // ignore: prefer_const_constructors
          return Center(
            // ignore: prefer_const_constructors
            child: CircularProgressIndicator(),
          );
        }
        return Center(
          child: CustomButton(
            title: 'Sign Out',
            onPressed: () {
              context.read<AuthCubit>().signOut();
            },
            width: 220,
          ),
        );
      },
    );
  }
}
