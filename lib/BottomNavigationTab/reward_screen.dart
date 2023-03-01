import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            expandedHeight: context.sW() / 4,
            floating: false,
            pinned: true,
            // toolbarHeight: context.sW() / 4,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              titlePadding: EdgeInsets.only(
                left: context.sW() / 16,
                right: context.sW() / 16,
                bottom: context.sW() / 30,
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
                          SizedBox(
                            width: context.sW() / 15,
                          ),
                          Column(
                            children: [
                              Text(
                                // 'Hurry! Your',
                                AppLocalizations.of(context)!.hurry,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text(
                                  // 'Total Rewards',
                                  AppLocalizations.of(context)!.total_rewards,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(fontSize: 22, height: 1)),
                            ],
                          ),
                          SizedBox(
                            width: context.sW() / 6.5,
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
              padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
              child: Column(
                children: [
                  SizedBox(
                    height: context.sH() / 4,
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: context.sH() / 5,
                              width: context.sW() / 3,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFEEFFDF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 221, 221, 221),
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: context.sW() / 8,
                                    width: context.sW() / 8,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/image1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: context.sW() / 30,
                                ),
                                SizedBox(
                                  width: context.sW() / 4,
                                  child: Text(
                                    // 'Flat 30% off',
                                    AppLocalizations.of(context)!.flat,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            height: 1),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  height: context.sW() / 30,
                                ),
                                SizedBox(
                                  width: context.sW() / 3,
                                  child: Text(
                                    // 'Lorem ipsum dummy text typesetting',
                                    AppLocalizations.of(context)!.lorem_ipsum,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        ?.copyWith(
                                          fontSize: 11,
                                        ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: context.sW() / 8,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: context.sH() / 5,
                              width: context.sW() / 3,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFDFDF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 221, 221, 221),
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: context.sW() / 8,
                                    width: context.sW() / 8,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/image1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: context.sW() / 30,
                                ),
                                SizedBox(
                                  width: context.sW() / 4,
                                  child: Text(
                                    // 'Flat 30% off',
                                    AppLocalizations.of(context)!.flat,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            height: 1),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  height: context.sW() / 30,
                                ),
                                SizedBox(
                                  width: context.sW() / 3,
                                  child: Text(
                                    // 'Lorem ipsum dummy text typesetting',
                                    AppLocalizations.of(context)!.lorem_ipsum,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        ?.copyWith(
                                          fontSize: 11,
                                        ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: context.sH() / 4,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: context.sH() / 5,
                              width: context.sW() / 3,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFDFDF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 221, 221, 221),
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: context.sW() / 8,
                                    width: context.sW() / 8,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/image1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: context.sW() / 30,
                                ),
                                SizedBox(
                                  width: context.sW() / 4,
                                  child: Text(
                                    // 'Flat 30% off',
                                    AppLocalizations.of(context)!.flat,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            height: 1),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  height: context.sW() / 30,
                                ),
                                SizedBox(
                                  width: context.sW() / 3,
                                  child: Text(
                                    // 'Lorem ipsum dummy text typesetting',
                                    AppLocalizations.of(context)!.lorem_ipsum,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        ?.copyWith(
                                          fontSize: 11,
                                        ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: context.sW() / 8,
                      ),
                      SizedBox(
                        height: context.sH() / 4,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: context.sH() / 5,
                              width: context.sW() / 3,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFDFDF),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 221, 221, 221),
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: context.sW() / 8,
                                    width: context.sW() / 8,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/image1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: context.sW() / 30,
                                ),
                                SizedBox(
                                  width: context.sW() / 4,
                                  child: Text(
                                    // 'Flat 30% off',
                                    AppLocalizations.of(context)!.flat,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            height: 1),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  height: context.sW() / 30,
                                ),
                                SizedBox(
                                  width: context.sW() / 3,
                                  child: Text(
                                    // 'Lorem ipsum dummy text typesetting',
                                    AppLocalizations.of(context)!.lorem_ipsum,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        ?.copyWith(
                                          fontSize: 11,
                                        ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
