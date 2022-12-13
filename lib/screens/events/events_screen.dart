import 'package:flutter/material.dart';
import 'package:travel_app/screens/events/components/body.dart';

import '../components/app_bar.dart';

class EventsSCreen extends StatelessWidget {
  const EventsSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}
