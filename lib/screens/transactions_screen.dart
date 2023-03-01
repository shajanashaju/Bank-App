import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/transactionlist.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                // titleSpacing: 0,
                expandedHeight: context.sW() / 3,
                floating: false,
                pinned: true,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.zero,
                  expandedTitleScale: 1,
                  title: Padding(
                    padding: EdgeInsets.only(left: context.sW() / 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TabBar(
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  25.0,
                                ),
                                color: const Color(0xFFD3E1FF),
                              ),
                              isScrollable: true,
                              indicatorColor: Colors.transparent,
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.black,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                              tabs: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: context.sW() / 16),
                                  child: Tab(
                                    text:
                                        // 'All Transcations',
                                        AppLocalizations.of(context)!
                                            .all_transactions,
                                  ),
                                ),
                                Tab(
                                  text:
                                      // 'Debits',
                                      AppLocalizations.of(context)!.debit,
                                ),
                                Tab(
                                  text:
                                      //  'Credits',
                                      AppLocalizations.of(context)!.credit,
                                ),
                              ],
                              indicatorSize: TabBarIndicatorSize.tab,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  collapseMode: CollapseMode.parallax,
                  background: Padding(
                    padding: EdgeInsets.only(
                      left: context.sW() / 16,
                      right: context.sW() / 10,
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
                                width: context.sW() / 10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    // 'Your Recent',
                                    AppLocalizations.of(context)!.your_recents,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Text(
                                      // 'Transactions',
                                      AppLocalizations.of(context)!
                                          .transactions,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(fontSize: 22, height: 1)),
                                ],
                              ),
                              SizedBox(
                                width: context.sW() / 8,
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
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: context.sW() / 20,
                      ),
                      Text(
                        'March',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: context.sW() / 40,
                      ),
                      Container(
                        height: context.sW() / 1.2,
                        width: context.sW(),
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
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.sW() / 20,
                              vertical: context.sW() / 20),
                          child: Column(
                            children: [
                              const TransactionList(
                                image: 'assets/images/image2.jpg',
                                name: 'Natasha Terez',
                                date: '+ \$ 396.84',
                                rate: '01 Mar 22',
                                time: '5:30 PM',
                              ),
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              const TransactionList(
                                image: 'assets/images/image2.jpg',
                                name: 'Natasha Terez',
                                date: '+ \$ 396.84',
                                rate: '01 Mar 22',
                                time: '5:30 PM',
                              ),
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              const TransactionList(
                                image: 'assets/images/image2.jpg',
                                name: 'Natasha Terez',
                                date: '+ \$ 396.84',
                                rate: '01 Mar 22',
                                time: '5:30 PM',
                              ),
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              const TransactionList(
                                image: 'assets/images/image2.jpg',
                                name: 'Natasha Terez',
                                date: '+ \$ 396.84',
                                rate: '01 Mar 22',
                                time: '5:30 PM',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.sW() / 20,
                      ),
                      Text(
                        'March',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: context.sW() / 40,
                      ),
                      Container(
                        height: context.sW() / 1.2,
                        width: context.sW(),
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
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: context.sW() / 20,
                              vertical: context.sW() / 20),
                          child: Column(
                            children: [
                              const TransactionList(
                                image: 'assets/images/image2.jpg',
                                name: 'Natasha Terez',
                                date: '+ \$ 396.84',
                                rate: '01 Mar 22',
                                time: '5:30 PM',
                              ),
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              const TransactionList(
                                image: 'assets/images/image2.jpg',
                                name: 'Natasha Terez',
                                date: '+ \$ 396.84',
                                rate: '01 Mar 22',
                                time: '5:30 PM',
                              ),
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              const TransactionList(
                                image: 'assets/images/image2.jpg',
                                name: 'Natasha Terez',
                                date: '+ \$ 396.84',
                                rate: '01 Mar 22',
                                time: '5:30 PM',
                              ),
                              SizedBox(
                                height: context.sW() / 20,
                              ),
                              const TransactionList(
                                image: 'assets/images/image2.jpg',
                                name: 'Natasha Terez',
                                date: '+ \$ 396.84',
                                rate: '01 Mar 22',
                                time: '5:30 PM',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Debits',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Center(
                child: Text(
                  'Credits',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
