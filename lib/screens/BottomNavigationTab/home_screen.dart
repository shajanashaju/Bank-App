import 'package:auto_route/auto_route.dart';
import 'package:bankapp/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:bankapp/context.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../widgets/debit_card.dart';
import '../../widgets/profileiconcard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                      // 'Welcome Back',
                      AppLocalizations.of(context)!.welcome_back,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Text('John Deo',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(height: 1)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.sW() / 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: context.sW() / 10),
                      child: Column(
                        children: [
                          Container(
                            width: context.sW() / 7,
                            height: context.sW() / 7,
                            decoration: BoxDecoration(
                                color: const Color(0xFFD3E1FF),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.add,
                              color: Color(0xFF0039BE),
                            ),
                          ),
                          SizedBox(
                            height: context.sW() / 20,
                          ),
                          Container(
                            width: context.sW() / 7,
                            height: context.sW() / 7,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFFD2DB),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.qr_code_2_outlined,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    const DebitCard(
                      cardname: 'Debit Card',
                      name: 'John Deo',
                      visa: 'Visa',
                      expdate: 'Exp 21/24',
                      cardnumber: '2423 3581 9503 2412',
                    ),
                    SizedBox(
                      width: context.sW() / 20,
                    ),
                    const DebitCard(
                      cardname: 'Debit Card',
                      name: 'John Deo',
                      visa: 'Visa',
                      expdate: 'Exp 21/24',
                      cardnumber: '2423 3581 9503 2412',
                    ),
                    SizedBox(
                      width: context.sW() / 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: context.sW() / 20,
                    ),
                    Row(
                      children: [
                        Text('\$ ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 15)),
                        SizedBox(
                          height: context.sW() / 20,
                        ),
                        Text(
                          '2500.10',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SizedBox(
                          width: context.sW() / 50,
                        ),
                        Text(
                          // 'Your Balance',
                          AppLocalizations.of(context)!.your_balance,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: context.sW() / 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: context.sW() / 4,
                      width: context.sW(),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 221, 221, 221),
                              blurRadius: 8.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: context.sW() / 20,
                            vertical: context.sW() / 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProfileIconCard(
                              iconName:
                                  // 'Transfer',
                                  AppLocalizations.of(context)!.transfer,
                              iconSymbol: Icons.transform_outlined,
                              click: () {},
                            ),
                            ProfileIconCard(
                              iconName:
                                  // 'E-store',
                                  AppLocalizations.of(context)!.e_store,
                              iconSymbol: Icons.local_grocery_store_outlined,
                              click: () {},
                            ),
                            ProfileIconCard(
                              iconName:
                                  // 'Bill Pay',
                                  AppLocalizations.of(context)!.bill_pay,
                              iconSymbol: Icons.payment,
                              click: () {},
                            ),
                            ProfileIconCard(
                              iconName:
                                  // 'Refer',
                                  AppLocalizations.of(context)!.refer,
                              iconSymbol: Icons.attach_money_outlined,
                              click: () {},
                            ),
                            ProfileIconCard(
                              iconName:
                                  //  'More',
                                  AppLocalizations.of(context)!.more,
                              iconSymbol: Icons.transform_outlined,
                              bgColor: Colors.black,
                              iconColor: Colors.white,
                              click: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.sW() / 20,
                    ),
                    Row(
                      children: [
                        Text(
                          // 'Send Money',
                          AppLocalizations.of(context)!.send_money,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 14),
                        ),
                        const Spacer(),
                        Text(
                          // 'See More',
                          AppLocalizations.of(context)!.see_more,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.sW() / 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: context.sW() / 4,
                      width: context.sW(),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 221, 221, 221),
                              blurRadius: 8.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: context.sW() / 20,
                            vertical: context.sW() / 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProfileIconCard(
                              iconName:
                                  // 'Send',
                                  AppLocalizations.of(context)!.send,
                              iconSymbol: Icons.add,
                              bgColor: Colors.black,
                              click: () {
                                AutoRouter.of(context)
                                    .push(const SendMoneyScreenRoute());
                              },
                            ),
                            ProfileIconCard(
                              iconName: 'Natasha',
                              // AppLocalizations.of(context)!.e_store,
                              iconSymbol: Icons.local_grocery_store_outlined,
                              bgImage: 'assets/images/image1.jpg', click: () {},
                            ),
                            ProfileIconCard(
                              iconName: 'Natasha',
                              // AppLocalizations.of(context)!.e_store,
                              iconSymbol: Icons.local_grocery_store_outlined,
                              bgImage: 'assets/images/image2.jpg', click: () {},
                            ),
                            ProfileIconCard(
                              iconName: 'Natasha',
                              // AppLocalizations.of(context)!.e_store,
                              iconSymbol: Icons.local_grocery_store_outlined,
                              bgImage: 'assets/images/image3.jpg', click: () {},
                            ),
                            ProfileIconCard(
                              iconName: 'Natasha',
                              // AppLocalizations.of(context)!.e_store,
                              iconSymbol: Icons.local_grocery_store_outlined,
                              bgImage: 'assets/images/image4.jpg', click: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.sW() / 20,
                    ),
                    Row(
                      children: [
                        Text(
                          // 'Transactions History',
                          AppLocalizations.of(context)!.transactions_history,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 14),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            AutoRouter.of(context)
                                .push(const TransactionsScreenRoute());
                          },
                          child: Text(
                            // 'See More',
                            AppLocalizations.of(context)!.see_more,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                ?.copyWith(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.sW() / 20,
                    ),
                    Container(
                      height: context.sW() / 1.5,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: context.sW() / 7,
                                  width: context.sW() / 8,
                                  child: Stack(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: context.sW() / 7,
                                        width: context.sW() / 7,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image2.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            width: context.sW() / 18,
                                            height: context.sW() / 18,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.white)),
                                            child: Image.asset(
                                                'assets/icons/arrowup.png')),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: context.sW() / 1.8,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Natasha Terez',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                          Text(
                                            '+ \$ 396.84',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '01 Mar 22',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(fontSize: 9),
                                          ),
                                          Text(
                                            '5:30 PM',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(fontSize: 9),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.sW() / 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: context.sW() / 7,
                                  width: context.sW() / 8,
                                  child: Stack(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: context.sW() / 7,
                                        width: context.sW() / 7,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image2.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            width: context.sW() / 18,
                                            height: context.sW() / 18,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.white)),
                                            child: Image.asset(
                                                'assets/icons/arrowup.png')),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: context.sW() / 1.8,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Natasha Terez',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                          Text(
                                            '+ \$ 396.84',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '01 Mar 22',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(fontSize: 9),
                                          ),
                                          Text(
                                            '5:30 PM',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(fontSize: 9),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.sW() / 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: context.sW() / 7,
                                  width: context.sW() / 8,
                                  child: Stack(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: context.sW() / 7,
                                        width: context.sW() / 7,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/image2.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            width: context.sW() / 18,
                                            height: context.sW() / 18,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.white)),
                                            child: Image.asset(
                                                'assets/icons/arrowup.png')),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: context.sW() / 1.8,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Natasha Terez',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                          Text(
                                            '+ \$ 396.84',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '01 Mar 22',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(fontSize: 9),
                                          ),
                                          Text(
                                            '5:30 PM',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2
                                                ?.copyWith(fontSize: 9),
                                          ),
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.sW() / 4,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
