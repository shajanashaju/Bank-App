import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:bankapp/router/router.gr.dart';

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../models/introlistmodel.dart';
import '../widgets/intro_list.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final onboardData = [...InroListModels.getInroListModels()];
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: context.sH(),
                width: context.sW() / 1.1,
                child: Image.asset(
                  'assets/images/intro_color_bg.png',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.sW() / 10, vertical: context.sW() / 20),
              child: Column(
                children: [
                  SizedBox(
                    height: context.sH() / 1.4,
                    width: context.sW(),
                    child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return IntroList(
                          image: onboardData[index].image,
                          title: onboardData[index].title,
                          content: onboardData[index].body,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: context.sW() / 10,
                    height: context.sW() / 10,
                    child: Row(
                      children: [
                        AnimatedContainer(
                          height: context.sW() / 55,
                          width: context.sW() / 55,
                          decoration: BoxDecoration(
                              color: pageIndex == 0
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          duration: const Duration(milliseconds: 300),
                        ),
                        SizedBox(
                          width: context.sW() / 60,
                        ),
                        AnimatedContainer(
                          height: context.sW() / 55,
                          width: context.sW() / 55,
                          decoration: BoxDecoration(
                              color: pageIndex == 1
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          duration: const Duration(milliseconds: 300),
                        ),
                        SizedBox(
                          width: context.sW() / 60,
                        ),
                        AnimatedContainer(
                          height: context.sW() / 55,
                          width: context.sW() / 55,
                          decoration: BoxDecoration(
                              color: pageIndex == 2
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          duration: const Duration(milliseconds: 300),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (pageIndex == 2) {
                        AutoRouter.of(context).push(const LoginScreenRoute());
                      }
                    },
                    child: Container(
                      height: context.sW() / 7,
                      width: context.sW(),
                      decoration: BoxDecoration(
                          color: pageIndex == 2
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                            // 'Get Started',
                            AppLocalizations.of(context)!.get_started,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    height: 1.5)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.sW() / 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(const LoginScreenRoute());
                    },
                    child: Text(
                      // 'Skip',
                      AppLocalizations.of(context)!.skip,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(fontWeight: FontWeight.w700, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
