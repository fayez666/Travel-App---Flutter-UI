import 'package:flutter/material.dart';
import 'package:travel_app/models/User.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../components/section_title.dart';

class TopTraveler extends StatelessWidget {
  const TopTraveler({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(title: "Top Travelers on Spark "),
        const VerticalSpacing(
          of: 20,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding)),
          padding: EdgeInsets.all(getProportionateScreenHeight(24)),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [kDefualtShadow],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                  topTravelers.length,
                  (index) => UserCard(
                        user: topTravelers[index],
                      ))
            ],
          ),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            height: getProportionateScreenHeight(55),
            width: getProportionateScreenHeight(55),
            fit: BoxFit.cover,
          ),
        ),
        const VerticalSpacing(
          of: 10,
        ),
        Text(
          user.name,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
