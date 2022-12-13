import 'package:flutter/material.dart';

import '../../constants.dart';

AppBar buildAppBar({bool isTransparent = false, String? title}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0.0,
    centerTitle: true,
    title: Text(
      isTransparent ? "" : "New Events",
      style: const TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
    ),
    leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: kIconColor,
        )),
    actions: [
      IconButton(
          onPressed: () {},
          icon: ClipOval(child: Image.asset("assets/images/profile.png")))
    ],
  );
}
