import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:bankapp/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => AutoRouter.of(context).push(
        const IntroScreenRoute(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/images/color_bg.png')),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.sW() / 10,
                ),
                SafeArea(
                  child: Text(
                    // 'logo',
                    AppLocalizations.of(context)!.logo,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                const Spacer(),
                Text(
                    // 'Easy way to manage your money',
                    AppLocalizations.of(context)!.easy_way_to,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 38)),

                //
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
