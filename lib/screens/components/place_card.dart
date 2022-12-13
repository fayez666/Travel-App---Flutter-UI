import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/User.dart';
import '../../size_config.dart';

class Travelers extends StatelessWidget {
  const Travelers({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUsers = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(30),
      child: Stack(
        children: [
          ...List.generate(
            users.length,
            (index) {
              totalUsers++;
              return Positioned(
                left: (22 * index).toDouble(),
                child: buildUserFace(index),
              );
            },
          ),
          Positioned(
            left: (22 * totalUsers).toDouble(),
            child: ClipOval(
              child: SvgPicture.asset(
                "assets/icons/add-button-svgrepo-com.svg",
                height: getProportionateScreenWidth(28),
                width: getProportionateScreenWidth(28),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildUserFace(int index) {
    return ClipOval(
      child: Image.asset(
        users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
