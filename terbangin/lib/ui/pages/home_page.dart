// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terbangin/cubit/auth_cubit.dart';
import 'package:terbangin/shared/theme.dart';
import 'package:terbangin/ui/widget/destination_card.dart';
import 'package:terbangin/ui/widget/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: (Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apa Kabar, \n ${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Bagaimana Kabarmu Hari ini?',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_profil.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              DestinationCard(
                name: 'danau venesia',
                city: 'Italia',
                imageUrl: 'assets/image_destination_1.png',
                rating: 2.8,
              ),
              DestinationCard(
                name: 'danau bali',
                city: 'Indonesia',
                imageUrl: 'assets/image_destination_2.png',
                rating: 3.7,
              ),
              DestinationCard(
                name: 'Sidney',
                city: 'Australia',
                imageUrl: 'assets/image_destination_3.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'danau venesia',
                city: 'Italia',
                imageUrl: 'assets/image_destination_4.png',
                rating: 2.8,
              ),
              DestinationCard(
                name: 'danau bali',
                city: 'Indonesia',
                imageUrl: 'assets/image_destination_5.png',
                rating: 3.7,
              ),
              DestinationCard(
                name: 'Sidney',
                city: 'Australia',
                imageUrl: 'assets/image_destination_6.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'danau venesia',
                city: 'Italia',
                imageUrl: 'assets/image_destination_7.png',
                rating: 2.8,
              ),
              DestinationCard(
                name: 'danau bali',
                city: 'Indonesia',
                imageUrl: 'assets/image_destination_8.png',
                rating: 3.7,
              ),
              DestinationCard(
                name: 'Sidney',
                city: 'Australia',
                imageUrl: 'assets/image_destination_9.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    // ignore: non_constant_identifier_names
    Widget NewDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tahun Baru Ini',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              name: 'danau beratan',
              city: 'bali',
              imageUrl: 'assets/image_destination_1.png',
              rating: 2.4,
            ),
            DestinationTile(
              name: 'danau beratan',
              city: 'bali',
              imageUrl: 'assets/image_destination_2.png',
              rating: 2.4,
            ),
            DestinationTile(
              name: 'Eifell',
              city: 'Prancis',
              imageUrl: 'assets/image_destination_3.png',
              rating: 5.2,
            ),
            DestinationTile(
              name: 'Merlion',
              city: 'Singapura',
              imageUrl: 'assets/image_destination_4.png',
              rating: 4.0,
            ),
            DestinationTile(
              name: 'dBurj Khalifa',
              city: 'Dubai',
              imageUrl: 'assets/image_destination_5.png',
              rating: 5.0,
            ),
            DestinationTile(
              name: 'danau beratan',
              city: 'bali',
              imageUrl: 'assets/image_destination_6.png',
              rating: 2.4,
            ),
            DestinationTile(
              name: 'Eifell',
              city: 'Prancis',
              imageUrl: 'assets/image_destination_7.png',
              rating: 5.2,
            ),
            DestinationTile(
              name: 'Merlion',
              city: 'Singapura',
              imageUrl: 'assets/image_destination_8.png',
              rating: 4.0,
            ),
            DestinationTile(
              name: 'dBurj Khalifa',
              city: 'Dubai',
              imageUrl: 'assets/image_destination_9.png',
              rating: 5.0,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        NewDestinations(),
      ],
    );
  }
}
