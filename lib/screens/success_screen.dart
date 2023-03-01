import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../router/router.gr.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/success_bg.png',
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: context.sW() / 4,
              ),
              Text(
                // 'Hurry!',
                AppLocalizations.of(context)!.hurry,
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: context.sW() / 20,
              ),
              SizedBox(
                width: context.sW() / 1.5,
                child: Text(
                    // 'Transfer Successfully completed to Natasha Terez',
                    textAlign: TextAlign.center,
                    AppLocalizations.of(context)!.transfer_successfully,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontSize: 13, color: Colors.grey)),
              ),
              SizedBox(
                height: context.sW() / 10,
              ),
              Container(
                height: context.sW() / 9,
                width: context.sW() / 2,
                decoration: BoxDecoration(
                    color: const Color(0xFFC8DAFF),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    // 'View Transfer Details',

                    AppLocalizations.of(context)!.view_transfer,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
                child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const BottomNavigationRoute());
                  },
                  child: Container(
                    height: context.sW() / 7,
                    width: context.sW(),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                          // 'Next',
                          AppLocalizations.of(context)!.next,
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
              ),
              SizedBox(
                height: context.sW() / 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
