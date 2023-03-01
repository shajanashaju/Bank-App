import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            floating: false,
            pinned: true,
            toolbarHeight: context.sW() / 5,
            // expandedHeight: 2.5,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              expandedTitleScale: 1,
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
                            width: context.sW() / 9,
                          ),
                          Column(
                            children: [
                              Text(
                                // 'Hey Here',
                                AppLocalizations.of(context)!.hey_here,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Text(
                                  // 'Add New Card',
                                  AppLocalizations.of(context)!.new_card,
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
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.sW() / 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: context.sW() / 2.4,
                          width: context.sW(),
                          decoration: BoxDecoration(
                              gradient: const RadialGradient(
                                radius: 1,
                                colors: [
                                  Color(0xFF3C3C3C),
                                  Colors.black,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.sW() / 20,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: context.sW() / 6,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Card Type',
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
                                Text('XXXX  XXXX  XXXX  XXXX',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                            fontSize: 13, color: Colors.white)),
                                SizedBox(
                                  height: context.sW() / 5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Name  of Card Holder',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              ?.copyWith(
                                                  fontSize: 11,
                                                  color: Colors.white)),
                                      Text('Exp Date',
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
                        SizedBox(
                          height: context.sW() / 10,
                        ),
                        Text(
                          // 'Name on card',
                          AppLocalizations.of(context)!.name_on_card,
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(
                          height: context.sW() / 35,
                        ),
                        Container(
                          width: context.sW(),
                          height: context.sW() / 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: const Color(0xFFD3E1FF),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.sW() / 50),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText:
                                        // 'Enter Name',
                                        AppLocalizations.of(context)!
                                            .enter_name,
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          color: const Color.fromARGB(
                                              255, 138, 171, 248),
                                        ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.sW() / 20,
                        ),
                        Text(
                          // 'Card Number',
                          AppLocalizations.of(context)!.card_number,
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(
                          height: context.sW() / 35,
                        ),
                        Container(
                          width: context.sW(),
                          height: context.sW() / 8,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 224, 234, 255),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: const Color(0xFFD3E1FF),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.sW() / 50),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText:
                                        //  'Enter Card Number',
                                        AppLocalizations.of(context)!
                                            .enter_card_number,
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          color: const Color.fromARGB(
                                              255, 138, 171, 248),
                                        ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.sW() / 20,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // 'Exp Date (DD/YY)',
                                  AppLocalizations.of(context)!.expiry_date,
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      ?.copyWith(
                                          fontSize: 14, color: Colors.black),
                                ),
                                SizedBox(
                                  height: context.sW() / 35,
                                ),
                                Container(
                                  width: context.sW() / 2.6,
                                  height: context.sW() / 8,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 224, 234, 255),
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: const Color(0xFFD3E1FF),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: context.sW() / 50),
                                    child: Center(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText:
                                                // 'Exp Date',
                                                AppLocalizations.of(context)!
                                                    .expiry_date_box,
                                            hintStyle: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  color: const Color.fromARGB(
                                                      255, 138, 171, 248),
                                                ),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CVV',
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      ?.copyWith(
                                          fontSize: 14, color: Colors.black),
                                ),
                                SizedBox(
                                  height: context.sW() / 35,
                                ),
                                Container(
                                  width: context.sW() / 2.6,
                                  height: context.sW() / 8,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 224, 234, 255),
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: const Color(0xFFD3E1FF),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: context.sW() / 50),
                                    child: Center(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText:
                                                // 'CVV Number',
                                                AppLocalizations.of(context)!
                                                    .cvv_nmuber,
                                            hintStyle: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  color: const Color.fromARGB(
                                                      255, 138, 171, 248),
                                                ),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.sW() / 3,
                        ),
                        Center(
                          child: Container(
                            width: context.sW() / 1.6,
                            height: context.sW() / 8,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                  // 'Add New Card',
                                  AppLocalizations.of(context)!.add_new_card,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          color: Colors.white, height: 1.5)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.sW() / 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // appBar: AppBar(
      //   toolbarHeight: 80,
      //   leading: Padding(
      //     padding: EdgeInsets.only(left: context.sW() / 16),
      //     child: IconButton(
      //       onPressed: () {
      //         AutoRouter.of(context).pop();
      //       },
      //       icon: const Icon(
      //         Icons.skip_previous_outlined,
      //         color: Colors.grey,
      //         size: 25,
      //       ),
      //     ),
      //   ),
      //   title: Center(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      // Text(
      //   // 'Hey Here',
      //   AppLocalizations.of(context)!.hey_here,
      //   style: Theme.of(context).textTheme.subtitle2,
      // ),
      // Text(
      //     // 'Add New Card',
      //     AppLocalizations.of(context)!.new_card,
      //     style: Theme.of(context)
      //         .textTheme
      //         .subtitle1
      //         ?.copyWith(fontSize: 22, height: 1)),
      //       ],
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(
      //           horizontal: context.sW() / 10, vertical: context.sW() / 50),
      //       child: const Icon(Icons.ac_unit_outlined),
      //     ),
      //   ],
      // ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           height: context.sW() / 2.4,
      //           width: context.sW(),
      //           decoration: BoxDecoration(
      //               gradient: const RadialGradient(
      //                 radius: 1,
      //                 colors: [
      //                   Color(0xFF3C3C3C),
      //                   Colors.black,
      //                 ],
      //               ),
      //               borderRadius: BorderRadius.circular(20)),
      //           child: Padding(
      //             padding: EdgeInsets.symmetric(
      //               horizontal: context.sW() / 20,
      //             ),
      //             child: Column(
      //               children: [
      //                 SizedBox(
      //                   height: context.sW() / 6,
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Text('Card Type',
      //                           style: Theme.of(context)
      //                               .textTheme
      //                               .subtitle2
      //                               ?.copyWith(
      //                                   fontSize: 11, color: Colors.white)),
      //                       Text('Visa',
      //                           style: Theme.of(context)
      //                               .textTheme
      //                               .subtitle2
      //                               ?.copyWith(
      //                                   fontSize: 11, color: Colors.white)),
      //                     ],
      //                   ),
      //                 ),
      //                 Text('XXXX  XXXX  XXXX  XXXX',
      //                     style: Theme.of(context)
      //                         .textTheme
      //                         .bodyText1
      //                         ?.copyWith(fontSize: 13, color: Colors.white)),
      //                 SizedBox(
      //                   height: context.sW() / 5,
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Text('Name  of Card Holder',
      //                           style: Theme.of(context)
      //                               .textTheme
      //                               .subtitle2
      //                               ?.copyWith(
      //                                   fontSize: 11, color: Colors.white)),
      //                       Text('Exp Date',
      //                           style: Theme.of(context)
      //                               .textTheme
      //                               .subtitle2
      //                               ?.copyWith(
      //                                   fontSize: 11, color: Colors.white)),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: context.sW() / 10,
      //         ),
      //         Text(
      //           // 'Name on card',
      //           AppLocalizations.of(context)!.name_on_card,
      //           style: Theme.of(context)
      //               .textTheme
      //               .button
      //               ?.copyWith(fontSize: 14, color: Colors.black),
      //         ),
      //         SizedBox(
      //           height: context.sW() / 35,
      //         ),
      //         Container(
      //           width: context.sW(),
      //           height: context.sW() / 8,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(20.0),
      //             border: Border.all(
      //               color: const Color(0xFFD3E1FF),
      //             ),
      //           ),
      //           child: Padding(
      //             padding: EdgeInsets.symmetric(horizontal: context.sW() / 50),
      //             child: Center(
      //               child: TextField(
      //                 decoration: InputDecoration(
      //                     hintText:
      //                         // 'Enter Name',
      //                         AppLocalizations.of(context)!.enter_name,
      //                     hintStyle: Theme.of(context)
      //                         .textTheme
      //                         .subtitle1
      //                         ?.copyWith(
      //                           fontWeight: FontWeight.w300,
      //                           color: const Color.fromARGB(255, 138, 171, 248),
      //                         ),
      //                     border: InputBorder.none),
      //               ),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: context.sW() / 20,
      //         ),
      //         Text(
      //           // 'Card Number',
      //           AppLocalizations.of(context)!.card_number,
      //           style: Theme.of(context)
      //               .textTheme
      //               .button
      //               ?.copyWith(fontSize: 14, color: Colors.black),
      //         ),
      //         SizedBox(
      //           height: context.sW() / 35,
      //         ),
      //         Container(
      //           width: context.sW(),
      //           height: context.sW() / 8,
      //           decoration: BoxDecoration(
      //             color: const Color.fromARGB(255, 224, 234, 255),
      //             borderRadius: BorderRadius.circular(20.0),
      //             border: Border.all(
      //               color: const Color(0xFFD3E1FF),
      //             ),
      //           ),
      //           child: Padding(
      //             padding: EdgeInsets.symmetric(horizontal: context.sW() / 50),
      //             child: Center(
      //               child: TextField(
      //                 decoration: InputDecoration(
      //                     hintText:
      //                         //  'Enter Card Number',
      //                         AppLocalizations.of(context)!.enter_card_number,
      //                     hintStyle: Theme.of(context)
      //                         .textTheme
      //                         .subtitle1
      //                         ?.copyWith(
      //                           fontWeight: FontWeight.w300,
      //                           color: const Color.fromARGB(255, 138, 171, 248),
      //                         ),
      //                     border: InputBorder.none),
      //               ),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: context.sW() / 20,
      //         ),
      //         Row(
      //           children: [
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   // 'Exp Date (DD/YY)',
      //                   AppLocalizations.of(context)!.expiry_date,
      //                   style: Theme.of(context)
      //                       .textTheme
      //                       .button
      //                       ?.copyWith(fontSize: 14, color: Colors.black),
      //                 ),
      //                 SizedBox(
      //                   height: context.sW() / 35,
      //                 ),
      //                 Container(
      //                   width: context.sW() / 2.6,
      //                   height: context.sW() / 8,
      //                   decoration: BoxDecoration(
      //                     color: const Color.fromARGB(255, 224, 234, 255),
      //                     borderRadius: BorderRadius.circular(20.0),
      //                     border: Border.all(
      //                       color: const Color(0xFFD3E1FF),
      //                     ),
      //                   ),
      //                   child: Padding(
      //                     padding: EdgeInsets.symmetric(
      //                         horizontal: context.sW() / 50),
      //                     child: Center(
      //                       child: TextField(
      //                         decoration: InputDecoration(
      //                             hintText:
      //                                 // 'Exp Date',
      //                                 AppLocalizations.of(context)!
      //                                     .expiry_date_box,
      //                             hintStyle: Theme.of(context)
      //                                 .textTheme
      //                                 .subtitle1
      //                                 ?.copyWith(
      //                                   fontWeight: FontWeight.w300,
      //                                   color: const Color.fromARGB(
      //                                       255, 138, 171, 248),
      //                                 ),
      //                             border: InputBorder.none),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             const Spacer(),
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   'CVV',
      //                   style: Theme.of(context)
      //                       .textTheme
      //                       .button
      //                       ?.copyWith(fontSize: 14, color: Colors.black),
      //                 ),
      //                 SizedBox(
      //                   height: context.sW() / 35,
      //                 ),
      //                 Container(
      //                   width: context.sW() / 2.6,
      //                   height: context.sW() / 8,
      //                   decoration: BoxDecoration(
      //                     color: const Color.fromARGB(255, 224, 234, 255),
      //                     borderRadius: BorderRadius.circular(20.0),
      //                     border: Border.all(
      //                       color: const Color(0xFFD3E1FF),
      //                     ),
      //                   ),
      //                   child: Padding(
      //                     padding: EdgeInsets.symmetric(
      //                         horizontal: context.sW() / 50),
      //                     child: Center(
      //                       child: TextField(
      //                         decoration: InputDecoration(
      //                             hintText:
      //                                 // 'CVV Number',
      //                                 AppLocalizations.of(context)!.cvv_nmuber,
      //                             hintStyle: Theme.of(context)
      //                                 .textTheme
      //                                 .subtitle1
      //                                 ?.copyWith(
      //                                   fontWeight: FontWeight.w300,
      //                                   color: const Color.fromARGB(
      //                                       255, 138, 171, 248),
      //                                 ),
      //                             border: InputBorder.none),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //         SizedBox(
      //           height: context.sW() / 3,
      //         ),
      //         Center(
      //           child: Container(
      //             width: context.sW() / 1.6,
      //             height: context.sW() / 8,
      //             decoration: BoxDecoration(
      //               color: Colors.black,
      //               borderRadius: BorderRadius.circular(20.0),
      //             ),
      //             child: Center(
      //               child: Text(
      //                   // 'Add New Card',
      //                   AppLocalizations.of(context)!.add_new_card,
      //                   style: Theme.of(context)
      //                       .textTheme
      //                       .subtitle1
      //                       ?.copyWith(color: Colors.white, height: 1.5)),
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           height: context.sW() / 60,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
