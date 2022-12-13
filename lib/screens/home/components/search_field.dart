import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenHeight(313),
      height: getProportionateScreenHeight(50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color(0xFF3E4067),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2,
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Search your destination...",
          hintStyle: TextStyle(
              fontSize: getProportionateScreenWidth(12),
              color: const Color(0xFF464A7E)),
          suffixIcon: const Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
            vertical: getProportionateScreenWidth(kDefaultPadding),
          ),
        ),
      ),
    );
  }
}
