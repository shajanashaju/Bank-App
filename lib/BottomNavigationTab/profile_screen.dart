import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../router/router.gr.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool light = true;
  bool dark = true;
  bool medium = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        leading: Padding(
          padding: EdgeInsets.only(
              left: context.sW() / 16, bottom: context.sW() / 16),
          child: IconButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.skip_previous_outlined,
              color: Colors.grey,
              size: 25,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              left: context.sW() / 20,
              right: context.sW() / 10,
            ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: context.sH() / 2.6,
                    width: context.sW(),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEDF2FF),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 221, 221, 221),
                            blurRadius: 8.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.sW() / 10,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: context.sW() / 5.5,
                          width: context.sW() / 5,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: context.sW() / 6,
                                  width: context.sW() / 6,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/image1.jpg',
                                      fit: BoxFit.cover,
                                    ),
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
                                      color: Colors.red,
                                      border: Border.all(color: Colors.white)),
                                  child: const Icon(
                                    Icons.create_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: context.sW() / 60,
                        ),
                        Text(
                          // 'Welcome Back,',
                          AppLocalizations.of(context)!.welcome_back,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.grey),
                        ),
                        Text('John Deo',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(fontSize: 22, height: 1)),
                        SizedBox(
                          height: context.sW() / 60,
                        ),
                        Container(
                          width: context.sW() / 2.2,
                          height: context.sW() / 15,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF8CA3D1)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              // 'Personal Information',
                              AppLocalizations.of(context)!.personal,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(color: const Color(0xFF002885)),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: context.sW() / 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  // 'Account Number',
                                  AppLocalizations.of(context)!.account_number,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Text(
                                  '3456722029',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF4160A9),
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.sW() / 40,
                            ),
                            Row(
                              children: [
                                Text(
                                  // 'Username',
                                  AppLocalizations.of(context)!.username,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Text(
                                  'john.deo1',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF4160A9),
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.sW() / 40,
                            ),
                            Row(
                              children: [
                                Text(
                                  // 'Email',
                                  AppLocalizations.of(context)!.email,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Text(
                                  'johndeo@gmail.com',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF4160A9),
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.sW() / 40,
                            ),
                            Row(
                              children: [
                                Text(
                                  // 'Mobile Number',
                                  AppLocalizations.of(context)!.mobile_number,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Text(
                                  '+98954175567',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF4160A9),
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.sW() / 40,
                            ),
                            Row(
                              children: [
                                Text(
                                  // 'Address',
                                  AppLocalizations.of(context)!.address,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Text(
                                  'Park Avenue 2nd',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF4160A9),
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.sW() / 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            AutoRouter.of(context)
                                .push(const EditProfileScreenRoute());
                          },
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: context.sW() / 10,
                              width: context.sW() / 2,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                    // 'Edit Informations',
                                    AppLocalizations.of(context)!
                                        .edit_informations,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        ?.copyWith(color: Colors.white)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.sW() / 15,
              ),
              Container(
                height: context.sH() / 2.5,
                width: context.sW(),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFE8ED),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 221, 221, 221),
                        blurRadius: 8.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.sW() / 10,
                        vertical: context.sW() / 15),
                    child: Column(
                      children: [
                        Container(
                          width: context.sW() / 2.2,
                          height: context.sW() / 15,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFFF4067)),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              // 'Personal Information',
                              AppLocalizations.of(context)!.personal,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(color: const Color(0xFFFF4067)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.sW() / 20,
                        ),
                        Row(
                          children: [
                            Text(
                              // 'Face Unlock',
                              AppLocalizations.of(context)!.face,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Switch(
                              value: medium,
                              activeColor: Colors.green,
                              inactiveThumbColor: Colors.white,
                              onChanged: (bool value) {
                                setState(() {
                                  medium = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              // 'Password Lock',
                              AppLocalizations.of(context)!.password,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Switch(
                              value: dark,
                              activeColor: Colors.green,
                              inactiveThumbColor: Colors.white,
                              onChanged: (bool value) {
                                setState(() {
                                  dark = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              // 'Finger Print',
                              AppLocalizations.of(context)!.finger,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  ?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Switch(
                              value: light,
                              activeColor: Colors.green,
                              inactiveThumbColor: Colors.white,
                              onChanged: (bool value) {
                                setState(() {
                                  light = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: context.sW() / 2,
                              child: Text(
                                // 'Change Login Pin',
                                AppLocalizations.of(context)!.login_pin,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 15,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
