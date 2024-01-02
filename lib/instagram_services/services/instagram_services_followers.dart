// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:instagram_services/instagram_services/instagram_services_home.dart';
import 'package:instagram_services/instagram_services/prices_model.dart';
import 'package:instagram_services/instagram_services/services/instagram_services_views.dart';

class InstagramServicesFollowers extends StatefulWidget {
  const InstagramServicesFollowers({Key? key}) : super(key: key);

  @override
  State<InstagramServicesFollowers> createState() =>
      _InstagramServicesFollowersState();
}

class _InstagramServicesFollowersState
    extends State<InstagramServicesFollowers> {
  final listOne30DAYREFILL = [
    PricesModel(pricing: 20, quantity: 100),
    PricesModel(pricing: 120, quantity: 1000),
    PricesModel(pricing: 500, quantity: 5000),
    PricesModel(pricing: 900, quantity: 10000),
  ];
  final listTwo365DAYS = [
    PricesModel(pricing: 20, quantity: 100),
    PricesModel(pricing: 130, quantity: 1000),
    PricesModel(pricing: 600, quantity: 5000),
    PricesModel(pricing: 1100, quantity: 10000),
  ];
  final listThreeLIFETIME = [
    PricesModel(pricing: 20, quantity: 100),
    PricesModel(pricing: 140, quantity: 1000),
    PricesModel(pricing: 650, quantity: 5000),
    PricesModel(pricing: 1200, quantity: 10000),
  ];
  final listFourNOSUPPORT = [
    PricesModel(pricing: 15, quantity: 100),
    PricesModel(pricing: 110, quantity: 1000),
    PricesModel(pricing: 500, quantity: 5000),
    PricesModel(pricing: 850, quantity: 10000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        isBack: true,
        text: 'FOLLOWERS',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const MainTileContainer(text: '30 Day Refill'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listOne30DAYREFILL,
              type: 'Followers',
            ),
            const MainTileContainer(text: '365 Day Refill'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listTwo365DAYS,
              type: 'Followers',
            ),
            const MainTileContainer(text: 'Lifetime Refill'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listThreeLIFETIME,
              type: 'Followers',
            ),
            const MainTileContainer(text: 'No Refill/No Support'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listFourNOSUPPORT,
              type: 'Followers',
            ),
          ],
        ),
      ),
    );
  }
}
