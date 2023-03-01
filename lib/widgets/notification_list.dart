import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    required this.image,
    required this.title,
    required this.date,
    Key? key,
  }) : super(key: key);
  final String image;
  final String title;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: context.sW() / 9,
          width: context.sW() / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: context.sW() / 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: context.sW() / 2,
              child: Text(
                title,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              date,
              style:
                  Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 9),
            ),
          ],
        )
      ],
    );
  }
}
