import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:bankapp/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/login_color_bg.png',
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: context.sW() / 5,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  // 'logo',
                  AppLocalizations.of(context)!.logo,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              SizedBox(
                height: context.sW() / 20,
              ),
              Text(
                // 'Welcome',
                AppLocalizations.of(context)!.welcome,
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: context.sW() / 50,
              ),
              Text(
                  // 'Enter your  four digit pin to login',
                  AppLocalizations.of(context)!.pin_number,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(fontSize: 13, color: Colors.grey)),
              SizedBox(
                height: context.sW() / 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: context.sW() / 4.5,
                  ),
                  Container(
                    height: context.sW() / 8,
                    width: context.sW() / 8,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE2ECFF),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(

                          // hintText: '2',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.w300),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ], // Only numbers can be entere
                    ),
                  ),
                  SizedBox(
                    width: context.sW() / 50,
                  ),
                  Container(
                    height: context.sW() / 8,
                    width: context.sW() / 8,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE2ECFF),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          // hintText: '2',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.w300),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: context.sW() / 50,
                  ),
                  Container(
                    height: context.sW() / 8,
                    width: context.sW() / 8,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE2ECFF),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(

                          // hintText: '2',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.w300),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    width: context.sW() / 50,
                  ),
                  Container(
                    height: context.sW() / 8,
                    width: context.sW() / 8,
                    decoration: BoxDecoration(
                        color: const Color(0xFFE2ECFF),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      onChanged: (value) {
                        if (value.isEmpty) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          // hintText: '2',
                          hintStyle: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.w300),
                          border: InputBorder.none),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.sW() / 20,
              ),
              Text(
                // 'FORGOT PIN',
                AppLocalizations.of(context)!.forget_pin,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.w700, fontSize: 10),
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
                          // 'Login to Account',
                          AppLocalizations.of(context)!.login_to_account,
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
