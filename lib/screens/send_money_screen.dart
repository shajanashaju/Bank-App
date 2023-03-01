import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:bankapp/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/contact_list.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  bool item = false;
  int scroll = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            floating: false,
            pinned: true,
            toolbarHeight: context.sW() / 2.8,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              expandedTitleScale: 1,
              title: MediaQuery.removePadding(
                context: context,
                removeBottom: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: context.sW() / 16),
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
                    SizedBox(
                      height: context.sW() / 20,
                    )
                  ],
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
                    height: context.sW() / 20,
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: context.sW() / 30,
                          ),
                          Container(
                            // height: context.sH(),
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
                                  vertical: context.sW() / 50),
                              child: Column(
                                children: [
                                  GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10),
                                    shrinkWrap: true,
                                    itemCount: item == false ? 8 : 16,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                        onTap: () {
                                          AutoRouter.of(context).replace(
                                              const SendMoneyProfileRoute());
                                        },
                                        child: SizedBox(
                                          height: context.sW() / 30,
                                          width: context.sW() / 30,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: SizedBox(
                                              child: Image.asset(
                                                'assets/images/image1.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        item = !item;
                                      });
                                    },
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        item == false ? 'More' : 'Less',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            ?.copyWith(
                                                color: item == false
                                                    ? Colors.black
                                                    : Colors.grey,
                                                fontSize: 12),
                                      ),
                                    ),
                                  )
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
                              'Recents Contacts',
                              // AppLocalizations.of(context)!.all_contacts,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.sW() / 20,
                  ),
                  SizedBox(
                    height: context.sH() / 2.40,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: context.sH() / 2.5,
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
                                  const ContactList(
                                    image: 'assets/images/image1.jpg',
                                    name: 'Natasha Terez',
                                    email: 'loremipsum@lorembank',
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  const ContactList(
                                    image: 'assets/images/image1.jpg',
                                    name: 'Natasha Terez',
                                    email: 'loremipsum@lorembank',
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
                                  ),
                                  const ContactList(
                                    image: 'assets/images/image1.jpg',
                                    name: 'Natasha Terez',
                                    email: 'loremipsum@lorembank',
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
                                          )),
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
                                  const ContactList(
                                    image: 'assets/images/image1.jpg',
                                    name: 'Natasha Terez',
                                    email: 'loremipsum@lorembank',
                                  ),
                                  SizedBox(
                                    height: context.sW() / 35,
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
