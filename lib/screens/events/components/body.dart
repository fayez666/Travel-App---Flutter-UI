import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/screens/home/components/popular_places.dart';
import 'package:travel_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
                ...List.generate(
                    travelSpots.length,
                    (index) => PlaceCard(
                          travelSpot: travelSpots[index],
                          isFullCard: true,
                        )),
                const AddNewPlaceCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AddNewPlaceCard extends StatelessWidget {
  const AddNewPlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(350),
      width: getProportionateScreenWidth(158),
      decoration: BoxDecoration(
        color: const Color(0xFF6A6C93).withOpacity(0.09),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: const Color(0xFFEBE8F6),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenWidth(53),
            width: getProportionateScreenWidth(53),
            child: ClipOval(
              child: SvgPicture.asset(
                "assets/icons/add-button-svgrepo-com.svg",
                height: getProportionateScreenWidth(28),
                width: getProportionateScreenWidth(28),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const VerticalSpacing(of: 10),
          const Text(
            "Add New Place",
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
