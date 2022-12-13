import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/screens/events/events_screen.dart';

import '../../constants.dart';
import '../../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(kDefaultPadding)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(
              icon: "assets/icons/calendar.svg",
              title: "Events",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventsSCreen(),
                    ));
              },
            ),
            NavItem(
              icon: "assets/icons/chat.svg",
              title: "Chat",
              isActive: true,
              press: () {},
            ),
            NavItem(
              icon: "assets/icons/friendship.svg",
              title: "Friends",
              press: () {},
            ),
          ],
        ),
      )),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.icon,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);
  final String icon, title;
  final bool isActive;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(5),
        height: getProportionateScreenHeight(60),
        width: getProportionateScreenHeight(60),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isActive) kDefualtShadow]),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 28,
              color: kTextColor,
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
