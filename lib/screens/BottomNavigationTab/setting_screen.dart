import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            expandedHeight: context.sW() / 3,
            floating: false,
            pinned: true,
            toolbarHeight: context.sW() / 5.3,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              titlePadding: EdgeInsets.only(
                left: context.sW() / 16,
                right: context.sW() / 16,
                bottom: context.sW() / 30,
              ),
              title: Container(
                padding: const EdgeInsets.only(left: 20),
                height: context.sW() / 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFF3F3F3),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        // icon: const Icon(
                        //   Icons.search,
                        //   size: 20,
                        //   color: Colors.black,
                        // ),
                        hintText:
                            //  'Search Category',
                            AppLocalizations.of(context)!.search,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .subtitle2
                            ?.copyWith(fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20,
                          ),
                        )),
                  ),
                ),
              ),
              collapseMode: CollapseMode.parallax,
              background: Padding(
                padding: EdgeInsets.only(
                  left: context.sW() / 16,
                  right: context.sW() / 16,
                  top: context.sW() / 40,
                ),
                child: Column(
                  children: [
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // 'Bill Pay',
                                AppLocalizations.of(context)!.bill_pay,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text(
                                  // 'Categories',
                                  AppLocalizations.of(context)!.categories,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(fontSize: 22, height: 1)),
                            ],
                          ),
                          SizedBox(
                            height: context.sW() / 10,
                            width: context.sW() / 10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/image1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sW() / 12),
              child: Column(
                children: [
                  SizedBox(
                    height: context.sW() / 20,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/electricity.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              Text(
                                  // 'Electricity',
                                  AppLocalizations.of(context)!.electricity,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.sW() / 30,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/ecommerce.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              SizedBox(
                                width: context.sW() / 7,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    // 'E-Commerce',
                                    AppLocalizations.of(context)!.ecommerce,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            height: 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.sW() / 30,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/mobile.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              Text(
                                  // 'Mobile & Data',
                                  AppLocalizations.of(context)!.mobile,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.sW() / 30,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/travel.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              Text(
                                  // 'Travel',
                                  AppLocalizations.of(context)!.travel,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.sW() / 30,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/tv.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              Text(
                                  // 'Tv & Internet',
                                  AppLocalizations.of(context)!.tv,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.sW() / 30,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/electricity.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              Text(
                                  // 'Pharmacy',
                                  AppLocalizations.of(context)!.pharmacy,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.sW() / 30,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/ticket.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              Text(
                                  // 'Ticket',
                                  AppLocalizations.of(context)!.ticket,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.sW() / 30,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/hotel.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              Text(
                                  // 'Hotel',
                                  AppLocalizations.of(context)!.hotel,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.sW() / 30,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: context.sH() / 9,
                          width: context.sW() / 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              Image.asset('assets/icons/flight.png'),
                              SizedBox(
                                height: context.sW() / 50,
                              ),
                              Text(
                                  // 'Flight',
                                  AppLocalizations.of(context)!.flight,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.sW() / 10,
                  ),
                  SizedBox(
                    height: context.sH() / 2.11,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: context.sH() / 2.2,
                            width: context.sW(),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 221, 221, 221),
                                    blurRadius: 8.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: context.sW() / 20,
                                  vertical: context.sW() / 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: context.sW() / 12,
                                        width: context.sW() / 12,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: context.sW() / 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: context.sW() / 2,
                                            child: Text(
                                              'Natasha Terez ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                    height: 1,
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            'loremipsum@lorembank',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 9,
                                                    color: Colors.grey),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: context.sW() / 12,
                                        width: context.sW() / 12,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: context.sW() / 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: context.sW() / 2,
                                            child: Text(
                                              'Natasha Terez',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            'loremipsum@lorembank',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 9,
                                                    color: Colors.grey),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: context.sW() / 12,
                                        width: context.sW() / 12,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: context.sW() / 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: context.sW() / 2,
                                            child: Text(
                                              'Natasha Terez',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            'loremipsum@lorembank',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 9,
                                                    color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: context.sW() / 12,
                                        width: context.sW() / 12,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: context.sW() / 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: context.sW() / 2,
                                            child: Text(
                                              'Natasha Terez',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            'loremipsum@lorembank',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 9,
                                                    color: Colors.grey),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: context.sW() / 12,
                                        width: context.sW() / 12,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: context.sW() / 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: context.sW() / 2,
                                            child: Text(
                                              'Natasha Terez',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            'loremipsum@lorembank',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 9,
                                                    color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: context.sW() / 12,
                                        width: context.sW() / 12,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 22,
                                        ),
                                      ),
                                      SizedBox(
                                        width: context.sW() / 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: context.sW() / 2,
                                            child: Text(
                                              'Natasha Terez',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        const Color(0xFF4F87FF),
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            'loremipsum@lorembank',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 9,
                                                    color: const Color(
                                                        0xFFA4C1FF)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: context.sW() / 12,
                                        width: context.sW() / 12,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image1.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: context.sW() / 25,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: context.sW() / 2,
                                            child: Text(
                                              'Natasha Terez',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            'loremipsum@lorembank',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 9,
                                                    color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: context.sW() / 13,
                            width: context.sW() / 2.5,
                            decoration: BoxDecoration(
                                color: const Color(0xFFD3E1FF),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                // 'All Contacts',
                                AppLocalizations.of(context)!.all_contacts,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.sW() / 4,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
