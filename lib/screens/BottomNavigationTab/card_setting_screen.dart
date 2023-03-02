import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../router/router.gr.dart';

class CardSettingScreen extends StatefulWidget {
  const CardSettingScreen({super.key});

  @override
  State<CardSettingScreen> createState() => _CardSettingScreenState();
}

class _CardSettingScreenState extends State<CardSettingScreen> {
  int cardPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            expandedHeight: context.sW() / 6,
            // floating: true,
            pinned: true,
            toolbarHeight: context.sW() / 6,
            automaticallyImplyLeading: false,

            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
              child: Row(
                children: [
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
                  SizedBox(
                    width: context.sW() / 45,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // 'Hy Here',
                        AppLocalizations.of(context)!.hy_here,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text(
                          // 'Send Money',
                          AppLocalizations.of(context)!.send_money,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontSize: 22, height: 1)),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.sW() / 10, vertical: context.sW() / 50),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        AutoRouter.of(context)
                            .push(const NotificationScreenRoute());
                      },
                      child: Container(
                        width: context.sW() / 10,
                        height: context.sW() / 10,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.sW() / 20,
                      child: Container(
                        width: context.sW() / 50,
                        height: context.sW() / 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: context.sW() / 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: context.sW() / 1,
                        height: context.sW() / 3,
                        child: CarouselSlider(
                          items: [
                            Container(
                              height: context.sW() / 2,
                              width: context.sW() / 1.8,
                              decoration: BoxDecoration(
                                  gradient: const RadialGradient(
                                    radius: 1,
                                    colors: [
                                      Color(0xFF3C3C3C),
                                      Colors.black,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.sW() / 20,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: context.sW() / 8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Debit Card',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                          Text('Visa',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                    Text('2423   3581   9503   2412',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(
                                                fontSize: 13,
                                                color: Colors.white)),
                                    SizedBox(
                                      height: context.sW() / 7,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('John Deo',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                          Text('Exp 21/24',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: context.sW() / 3,
                              width: context.sW() / 1.8,
                              decoration: BoxDecoration(
                                  gradient: const RadialGradient(
                                    radius: 1,
                                    colors: [
                                      Color(0xFF3C3C3C),
                                      Colors.black,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.sW() / 20,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: context.sW() / 8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Debit Card',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                          Text('Visa',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                    Text('2423   3581   9503   2412',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(
                                                fontSize: 13,
                                                color: Colors.white)),
                                    SizedBox(
                                      height: context.sW() / 7,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('John Deo',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                          Text('Exp 21/24',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: context.sW() / 3,
                              width: context.sW() / 1.8,
                              decoration: BoxDecoration(
                                  gradient: const RadialGradient(
                                    radius: 1,
                                    colors: [
                                      Color(0xFF3C3C3C),
                                      Colors.black,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.sW() / 20,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: context.sW() / 8,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Debit Card',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                          Text('Visa',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                    Text('2423   3581   9503   2412',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(
                                                fontSize: 13,
                                                color: Colors.white)),
                                    SizedBox(
                                      height: context.sW() / 7,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('John Deo',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                          Text('Exp 21/24',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                AutoRouter.of(context)
                                    .push(const AddNewCardScreenRoute());
                              },
                              child: Container(
                                height: context.sW() / 3,
                                width: context.sW() / 1.8,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFD3E1FF),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xFF0039BE),
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                cardPage = index;
                              });
                            },
                            height: 240,
                            // autoPlay: true,
                            autoPlayCurve: Curves.linearToEaseOut,
                            enableInfiniteScroll: false,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 700),
                            viewportFraction: 0.60,
                            enlargeCenterPage: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: context.sW() / 8,
                  height: context.sW() / 10,
                  child: Row(
                    children: [
                      Container(
                        height: context.sW() / 55,
                        width: context.sW() / 55,
                        decoration: BoxDecoration(
                            color: cardPage == 0 ? Colors.black : Colors.grey,
                            borderRadius: BorderRadius.circular(80)),
                      ),
                      SizedBox(
                        width: context.sW() / 60,
                      ),
                      Container(
                        height: context.sW() / 55,
                        width: context.sW() / 55,
                        decoration: BoxDecoration(
                            color: cardPage == 1 ? Colors.black : Colors.grey,
                            borderRadius: BorderRadius.circular(80)),
                      ),
                      SizedBox(
                        width: context.sW() / 60,
                      ),
                      Container(
                        height: context.sW() / 55,
                        width: context.sW() / 55,
                        decoration: BoxDecoration(
                            color: cardPage == 2 ? Colors.black : Colors.grey,
                            borderRadius: BorderRadius.circular(80)),
                      ),
                      SizedBox(
                        width: context.sW() / 60,
                      ),
                      Container(
                        height: context.sW() / 55,
                        width: context.sW() / 55,
                        decoration: BoxDecoration(
                            color: cardPage == 3 ? Colors.black : Colors.grey,
                            borderRadius: BorderRadius.circular(80)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        // height: context.sW() / 4,
                        width: context.sW(),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 221, 221, 221),
                                blurRadius: 8.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.sW() / 20),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: context.sW() / 7,
                                    height: context.sW() / 7,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFFFD2DB),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: context.sW() / 15,
                                    ),
                                    child: Container(
                                      width: context.sW() / 13,
                                      height: context.sW() / 12,
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFFF7894),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          '25%',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              ?.copyWith(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: context.sW() / 80,
                                    vertical: context.sW() / 15),
                                child: SizedBox(
                                  width: context.sW() / 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // 'Card Usage',
                                        AppLocalizations.of(context)!
                                            .card_usage,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        '\$ 200.01 ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: context.sW() / 80,
                                    vertical: context.sW() / 15),
                                child: SizedBox(
                                  width: context.sW() / 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // 'Due Date',
                                        AppLocalizations.of(context)!.due_date,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        '22 Mar 22',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.sW() / 20,
                      ),
                      SizedBox(
                        height: context.sH() / 2.45,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: context.sW(),
                                height: context.sH() / 2.6,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 224, 234, 255),
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: const Color(0xFFD3E1FF),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: context.sW() / 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: context.sW() / 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            // 'Total Card Limit',
                                            AppLocalizations.of(context)!
                                                .total_card_limit,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                          const Spacer(),
                                          Text(
                                            ': \$3000',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: context.sW() / 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            // 'Available Card Limit',
                                            AppLocalizations.of(context)!
                                                .available_card_limit,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                          const Spacer(),
                                          Text(
                                            ': \$2600',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: context.sW() / 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            // 'PIN Based Transaction',
                                            AppLocalizations.of(context)!
                                                .pin_based_tr,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                          const Spacer(),
                                          Text(
                                            ': \$3000',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: context.sW() / 20,
                                      ),
                                      Text(
                                        // 'Domestic Transaction',
                                        AppLocalizations.of(context)!.domestic,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            ?.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: context.sW() / 20,
                                      ),
                                      Text(
                                        // 'International Transaction',
                                        AppLocalizations.of(context)!
                                            .international,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            ?.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: context.sW() / 20,
                                      ),
                                      Text(
                                        // 'Contactless Transaction',
                                        AppLocalizations.of(context)!
                                            .contactless,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            ?.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: context.sH() / 22,
                                width: context.sW() / 2.5,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFD3E1FF),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    // '4 Unread Messages',
                                    AppLocalizations.of(context)!
                                        .unread_messages,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.sH() / 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
