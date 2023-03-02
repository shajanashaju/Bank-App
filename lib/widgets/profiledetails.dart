import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    required this.title,
    required this.content,
    Key? key,
  }) : super(key: key);
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          // AppLocalizations.of(context)!.account_number,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Text(
          content,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF4160A9),
              ),
        ),
      ],
    );
  }
}
