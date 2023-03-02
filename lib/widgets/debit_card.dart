import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

class DebitCard extends StatelessWidget {
  const DebitCard({
    required this.cardname,
    required this.name,
    required this.visa,
    required this.expdate,
    required this.cardnumber,
    Key? key,
  }) : super(key: key);
  final String cardname;
  final String name;
  final String visa;
  final String expdate;
  final String cardnumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.sW() / 3,
      width: context.sW() / 1.8,
      decoration: BoxDecoration(
          gradient: const RadialGradient(
            radius: 1,
            colors: [
              Color(0xFF3C3C3C),
              Colors.black,
            ],
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.sW() / 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: context.sW() / 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cardname,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(fontSize: 11, color: Colors.white)),
                  Text(visa,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(fontSize: 11, color: Colors.white)),
                ],
              ),
            ),
            Text(cardnumber,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 13, color: Colors.white)),
            SizedBox(
              height: context.sW() / 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(fontSize: 11, color: Colors.white)),
                  Text(expdate,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          ?.copyWith(fontSize: 11, color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
