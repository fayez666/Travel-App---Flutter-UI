import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/TravelSpot.dart';
import '../../../size_config.dart';
import '../../components/place_card.dart';
import '../../components/section_title.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(
          title: "Right Now At Spark",
        ),
        const VerticalSpacing(
          of: 20,
        ),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenHeight(20)),
                  child: PlaceCard(
                    travelSpot: travelSpots[index],
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        )
      ],
    );
  }
}

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key? key,
    required this.travelSpot,
    this.isFullCard = false,
  }) : super(key: key);

  final TravelSpot travelSpot;
  final bool isFullCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 158 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        travelSpot.image,
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding:
                EdgeInsets.all(getProportionateScreenWidth(kDefaultPadding)),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kDefualtShadow],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              children: [
                Text(
                  travelSpot.name,
                  style: TextStyle(
                      fontSize: isFullCard ? 17 : 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                if (isFullCard)
                  Text(
                    travelSpot.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard) const Text("October 2023"),
                const VerticalSpacing(
                  of: 10,
                ),
                Travelers(
                  users: travelSpot.users,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
