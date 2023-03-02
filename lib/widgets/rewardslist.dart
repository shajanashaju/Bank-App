import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RewardsList extends StatelessWidget {
  const RewardsList({
    required this.rwdtitle,
    required this.rwdcontent,
    required this.bgColor,
    Key? key,
  }) : super(key: key);
  final String rwdtitle;
  final String rwdcontent;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: context.sH() / 5.5,
          width: context.sW() / 2.5,
          decoration: BoxDecoration(
              color: bgColor ?? const Color(0xFFEEFFDF),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 221, 221, 221),
                  blurRadius: 8.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20)),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: context.sW() / 8,
                width: context.sW() / 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/image1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.sW() / 30,
            ),
            SizedBox(
              width: context.sW() / 4,
              child: Text(
                // 'Flat 30% off',
                AppLocalizations.of(context)!.flat,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w600, height: 1),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: context.sW() / 30,
            ),
            SizedBox(
              width: context.sW() / 3,
              child: Text(
                // 'Lorem ipsum dummy text typesetting',
                AppLocalizations.of(context)!.lorem_ipsum,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      fontSize: 11,
                    ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
