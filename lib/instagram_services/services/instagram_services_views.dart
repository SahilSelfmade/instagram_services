// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:instagram_services/core/helpers/app_helper_functions.dart';
import 'package:instagram_services/instagram_services/instagram_services_home.dart';
import 'package:instagram_services/instagram_services/prices_model.dart';

class InstagramServicesViews extends StatefulWidget {
  const InstagramServicesViews({Key? key}) : super(key: key);

  @override
  State<InstagramServicesViews> createState() => _InstagramServicesViewsState();
}

class _InstagramServicesViewsState extends State<InstagramServicesViews> {
  final listOneReels = [
    PricesModel(pricing: 0, quantity: 100),
    PricesModel(pricing: 0, quantity: 1000),
    PricesModel(pricing: 0, quantity: 5000),
    PricesModel(pricing: 0, quantity: 10000),
  ];
  final listTwoStory = [
    PricesModel(pricing: 0, quantity: 100),
    PricesModel(pricing: 0, quantity: 1000),
    PricesModel(pricing: 0, quantity: 5000),
    PricesModel(pricing: 0, quantity: 10000),
  ];
  final listThreeIGTV = [
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
        text: 'VIEWS',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const MainTileContainer(text: 'REELS'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listOneReels,
              type: 'Views',
            ),
            const MainTileContainer(text: 'STORY'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listTwoStory,
              type: 'Views',
            ),
            const MainTileContainer(text: 'IGTV'),
            const SizedBox(
              height: 20,
            ),
            TypeList(
              list: listThreeIGTV,
              type: 'Views',
            ),
          ],
        ),
      ),
    );
  }
}

class TypeList extends StatelessWidget {
  final String type;
  const TypeList({
    Key? key,
    required this.type,
    required this.list,
  }) : super(key: key);

  final List<PricesModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            '${list[index].quantity} $type at ${list[index].pricing}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      },
    );
  }
}

class MainTileContainer extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const MainTileContainer({
    Key? key,
    this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppHelperFunctions.screenWidth(context),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.amber[700],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
