import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(kDefaultPadding)),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Text("See All"),
          ),
        ],
      ),
    );
  }
}
