import 'package:auto_route/auto_route.dart';
import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SendMoneyProfile extends StatelessWidget {
  const SendMoneyProfile({super.key});
  // List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  // String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        leading: Padding(
          padding: EdgeInsets.only(
            left: context.sW() / 16,
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
        actions: [
          Padding(
            padding: EdgeInsets.only(
              left: context.sW() / 20,
              right: context.sW() / 10,
              top: context.sW() / 30,
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.sW() / 10),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: context.sW() / 20,
                ),
                Container(
                  height: context.sH() / 1.4,
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.sW() / 10,
                        vertical: context.sW() / 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: context.sW() / 30,
                        ),
                        Text(
                          // 'Send Money to,',
                          AppLocalizations.of(context)!.send_money_to,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.grey),
                        ),
                        Text('Natasha Terez',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(fontSize: 22, height: 1)),
                        SizedBox(
                          height: context.sW() / 30,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            // 'Amount',
                            AppLocalizations.of(context)!.amount,
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Container(
                          width: context.sW(),
                          height: context.sW() / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.sW() / 50),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText:
                                        //  'Enter Amount',
                                        AppLocalizations.of(context)!
                                            .enter_amount,
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                          color: const Color.fromARGB(
                                              255, 243, 157, 173),
                                        ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.sW() / 30,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            // 'Transfer Type',
                            AppLocalizations.of(context)!.transfer_type,
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        //             DropdownButton(
                        //               value: dropdownValue,
                        // icon: const Icon(Icons.arrow_downward),
                        // elevation: 16,
                        // style: const TextStyle(color: Colors.deepPurple),
                        // underline: Container(
                        //   height: 2,
                        //   color: Colors.deepPurpleAccent,
                        // ),
                        //               items: [
                        //                 DropdownMenuItem(
                        //                   child: Text('Dash'),
                        //                 ),
                        //               ],
                        //               onChanged: (value) {
                        //                 dropdownValue = value!;
                        //               },
                        //             ),
                        Container(
                          width: context.sW(),
                          height: context.sW() / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.sW() / 50),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText:
                                        // 'Instant Transfer',
                                        AppLocalizations.of(context)!
                                            .instant_transfer,
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                          color: const Color.fromARGB(
                                              255, 243, 157, 173),
                                        ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.sW() / 30,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            // 'Email (Optional)',
                            AppLocalizations.of(context)!.email_optional,
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Container(
                          width: context.sW(),
                          height: context.sW() / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.sW() / 50),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText:
                                        // 'Enter Email',
                                        AppLocalizations.of(context)!
                                            .enter_email,
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                          color: const Color.fromARGB(
                                              255, 243, 157, 173),
                                        ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.sW() / 30,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            // 'Note (Optional)',
                            AppLocalizations.of(context)!.note_optional,
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Container(
                          width: context.sW(),
                          height: context.sW() / 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: context.sW() / 50),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText:
                                        // 'Write Something',
                                        AppLocalizations.of(context)!.write,
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                          color: const Color.fromARGB(
                                              255, 243, 157, 173),
                                        ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(const SuccessScreenRoute());
                  },
                  child: Container(
                    height: context.sW() / 7,
                    width: context.sW(),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                          // 'Send Money',
                          AppLocalizations.of(context)!.send_money,
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
                  height: context.sW() / 40,
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
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
          ],
        ),
      ),
    );
  }
}
