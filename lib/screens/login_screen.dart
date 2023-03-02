import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:bankapp/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
            // SizedBox(
            //   width: context.sW() / 4.5,
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sW() / 5),
              child: PinCodeTextField(
                appContext: context,
                pastedTextStyle: const TextStyle(
                  color: Color(0xFFD3E1FF),
                  backgroundColor: Color(0xFFD3E1FF),
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Colors.black,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                length: 4,
                obscureText: false,
                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                onChanged: ((value) {}),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  // borderWidth: 2,
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeColor: const Color.fromRGBO(200, 208, 233, 1),
                  activeFillColor: const Color.fromARGB(255, 201, 213, 249),
                  selectedColor: const Color.fromARGB(255, 201, 213, 249),
                  inactiveColor: const Color.fromARGB(255, 201, 213, 249),
                  inactiveFillColor: const Color.fromARGB(255, 201, 213, 249),
                  selectedFillColor: const Color.fromARGB(255, 201, 213, 249),
                ),
              ),
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
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            height: 1.5)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.sW() / 20,
            )
          ],
        ),
      ],
    ));
  }
}
