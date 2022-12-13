import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/home_bg.png",
          height: getProportionateScreenHeight(315),
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            Text(
              "Travelers",
              style: TextStyle(
                fontSize: getProportionateScreenHeight(73),
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 0.5,
              ),
            ),
            const Text(
              "Travel Community App",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Positioned(
          bottom: getProportionateScreenHeight(-25),
          child: const SearchField(),
        )
      ],
    );
  }
}
