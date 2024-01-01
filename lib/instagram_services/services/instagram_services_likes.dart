// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:instagram_services/instagram_services/instagram_services_home.dart';
import 'package:instagram_services/instagram_services/prices_model.dart';
import 'package:instagram_services/instagram_services/services/instagram_services_views.dart';

class InstagramServicesLikes extends StatefulWidget {
  const InstagramServicesLikes({Key? key}) : super(key: key);

  @override
  State<InstagramServicesLikes> createState() => _InstagramServicesLikesState();
}

class _InstagramServicesLikesState extends State<InstagramServicesLikes> {
  final listOne = [
    PricesModel(pricing: 0, quantity: 100),
    PricesModel(pricing: 0, quantity: 1000),
    PricesModel(pricing: 0, quantity: 5000),
    PricesModel(pricing: 0, quantity: 10000),
  ];
  final listTwo = [
    PricesModel(pricing: 0, quantity: 100),
    PricesModel(pricing: 0, quantity: 1000),
    PricesModel(pricing: 0, quantity: 5000),
    PricesModel(pricing: 0, quantity: 10000),
  ];
  final listThree = [
    PricesModel(pricing: 0, quantity: 100),
    PricesModel(pricing: 0, quantity: 1000),
    PricesModel(pricing: 0, quantity: 5000),
    PricesModel(pricing: 0, quantity: 10000),
  ];
  final listFour = [
    PricesModel(pricing: 0, quantity: 100),
    PricesModel(pricing: 0, quantity: 1000),
    PricesModel(pricing: 0, quantity: 5000),
    PricesModel(pricing: 0, quantity: 10000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        isBack: true,
        text: 'LIKES',
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
              list: listOne,
              type: 'Likes',
            ),
            const MainTileContainer(text: '365 Day Refill'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listTwo,
              type: 'Likes',
            ),
            const MainTileContainer(text: 'Lifetime Refill'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listThree,
              type: 'Likes',
            ),
            const MainTileContainer(text: 'No Refill/No Support'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listFour,
              type: 'Likes',
            ),
          ],
        ),
      ),
    );
  }
}
