import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/notification_list.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            floating: false,
            pinned: true,
            toolbarHeight: context.sW() / 4,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              expandedTitleScale: 1,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              AutoRouter.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.skip_previous_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          // SizedBox(
                          //   width: context.sW() / 50,
                          // ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // 'Your Recent',
                                  AppLocalizations.of(context)!.your_recents,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text(
                                    // 'Notification',
                                    AppLocalizations.of(context)!.notifications,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(fontSize: 22, height: 1)),
                              ],
                            ),
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
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: context.sW() / 20,
                          ),
                          Container(
                            height: context.sH() / 1.4,
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
                                    height: context.sW() / 20,
                                  ),
                                  Text(
                                    // 'This Week',
                                    AppLocalizations.of(context)!.this_week,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  NotificationList(
                                    image: 'assets/images/image1.jpg',
                                    title:
                                        // 'Natasha Terez Gantar requested a payment for \$1200',
                                        AppLocalizations.of(context)!.natasha,
                                    date: '01 Mar 22',
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  NotificationList(
                                    image: 'assets/images/image1.jpg',
                                    title:
                                        // 'Natasha Terez Gantar requested a payment for \$1200',
                                        AppLocalizations.of(context)!.natasha,
                                    date: '01 Mar 22',
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  const NotificationList(
                                    image: 'assets/images/image1.jpg',
                                    title:
                                        'Natasha Terez Gantar requested a payment for \$1200',
                                    date: '01 Mar 22',
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  NotificationList(
                                    image: 'assets/images/image1.jpg',
                                    title:
                                        // 'Natasha Terez Gantar requested a payment for \$1200',
                                        AppLocalizations.of(context)!.natasha,
                                    date: '01 Mar 22',
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  NotificationList(
                                    image: 'assets/images/image1.jpg',
                                    title:
                                        // 'Natasha Terez Gantar requested a payment for \$1200',
                                        AppLocalizations.of(context)!.natasha,
                                    date: '01 Mar 22',
                                  ),
                                  SizedBox(
                                    height: context.sW() / 20,
                                  ),
                                  Text(
                                      // 'Last Week',
                                      AppLocalizations.of(context)!.last_week,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          ?.copyWith(color: Colors.grey)),
                                  SizedBox(
                                    height: context.sW() / 25,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: context.sW() / 9,
                                        width: context.sW() / 9,
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
                                              // 'Natasha Terez Gantar requested a payment for \$1200',
                                              AppLocalizations.of(context)!
                                                  .natasha,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.grey,
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            '01 Mar 22',
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
                                        height: context.sW() / 9,
                                        width: context.sW() / 9,
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
                                              // 'Natasha Terez Gantar requested a payment for \$1200',
                                              AppLocalizations.of(context)!
                                                  .natasha,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.grey,
                                                  ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            '01 Mar 22',
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
                                ],
                              ),
                            ),
                          ),
                        ],
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
                              // '4 Unread Messages',
                              AppLocalizations.of(context)!.unread_messages,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
