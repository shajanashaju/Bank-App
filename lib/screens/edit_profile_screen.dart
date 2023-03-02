import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../router/router.gr.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: EdgeInsets.only(
            left: context.sW() / 20,
          ),
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
              top: context.sW() / 20,
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
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: context.sH() / 1.50,
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
                      width: context.sW() / 2,
                      height: context.sW() / 15,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF8CA3D1)),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          // 'Edit Personal Information',
                          AppLocalizations.of(context)!.edit_personal,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: const Color(0xFF002885)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.sW() / 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          // 'User Name',
                          AppLocalizations.of(context)!.username,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: const Color(0xFF002885),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,

                        // floatingLabelBehavior: FloatingLabelBehavior.auto,

                        hintText:
                            // "Enter New User",
                            AppLocalizations.of(context)!.enter_new_user,
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 175, 175, 175),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        labelStyle: const TextStyle(
                            color: Color(0xFF002885),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF002885),
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      textInputAction: TextInputAction.go,
                      controller: TextEditingController()..text = 'John Deo',
                      onChanged: (text) => {},
                    ),
                    SizedBox(
                      height: context.sW() / 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          // 'Email',
                          AppLocalizations.of(context)!.email,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: const Color(0xFF002885),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText:
                            // "Enter Email",
                            AppLocalizations.of(context)!.enter_email,
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 175, 175, 175),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        labelStyle: const TextStyle(
                            color: Color(0xFF002885),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF002885),
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      textInputAction: TextInputAction.go,
                      controller: TextEditingController()
                        ..text = 'johndeo@gmail.com',
                      onChanged: (text) => {},
                    ),
                    SizedBox(
                      height: context.sW() / 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          // 'Phone Number',
                          AppLocalizations.of(context)!.phone_number,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: const Color(0xFF002885),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,

                        // floatingLabelBehavior: FloatingLabelBehavior.auto,

                        hintText:
                            // "Enter Phone Number",
                            AppLocalizations.of(context)!.enter_phone_number,
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 175, 175, 175),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        labelStyle: const TextStyle(
                            color: Color(0xFF002885),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF002885),
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      textInputAction: TextInputAction.go,
                      controller: TextEditingController()
                        ..text = '+98954175567',
                      onChanged: (text) => {},
                    ),
                    SizedBox(
                      height: context.sW() / 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          // 'Optional',
                          AppLocalizations.of(context)!.optional,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: const Color(0xFF002885),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,

                        // floatingLabelBehavior: FloatingLabelBehavior.auto,

                        hintText:
                            //  "Enter New Value",
                            AppLocalizations.of(context)!.enter_new_user,
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 175, 175, 175),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        labelStyle: const TextStyle(
                            color: Color(0xFF002885),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF002885),
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      textInputAction: TextInputAction.go,
                      controller: TextEditingController()..text = 'Martin',
                      onChanged: (text) => {},
                    ),
                    SizedBox(
                      height: context.sW() / 20,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).pop();
                        },
                        child: Container(
                          height: context.sW() / 10,
                          width: context.sW() / 2,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                                // 'Save Informations',
                                AppLocalizations.of(context)!.save_informations,
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
        ),
      ),
    );
  }
}
