import 'package:flutter/material.dart';

import 'package:travel_app/screens/home/components/home_header.dart';
import 'package:travel_app/screens/home/components/popular_places.dart';
import 'package:travel_app/screens/home/components/top_traveler.dart';
import 'package:travel_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          HomeHeader(),
          VerticalSpacing(
            of: 48,
          ),
          PopularPlaces(),
          VerticalSpacing(
            of: 20,
          ),
          TopTraveler(),
          VerticalSpacing(
            of: 20,
          ),
        ],
      ),
    );
  }
}
