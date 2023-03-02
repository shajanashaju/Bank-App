import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../widgets/rewardslist.dart';

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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SizedBox(
                          //   width: context.sW() / 25,
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                            width: context.sW() / 3.5,
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
                    height: context.sH() / 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        RewardsList(
                          rwdtitle: 'Flat 30% off',
                          rwdcontent: 'Lorem ipsum dummy text typesetting',
                          bgColor: null,
                        ),
                        RewardsList(
                          rwdtitle: 'Flat 30% off',
                          rwdcontent: 'Lorem ipsum dummy text typesetting',
                          bgColor: Color(0xFFFFDFDF),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.sH() / 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const RewardsList(
                          rwdtitle: 'Flat 30% off',
                          rwdcontent: 'Lorem ipsum dummy text typesetting',
                          bgColor: Color(0xFFFFDFDF),
                        ),
                        SizedBox(
                          width: context.sW() / 50,
                        ),
                        const RewardsList(
                          rwdtitle: 'Flat 30% off',
                          rwdcontent: 'Lorem ipsum dummy text typesetting',
                          bgColor: Color(0xFFFFDFDF),
                        ),
                      ],
                    ),
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
