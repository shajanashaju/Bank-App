import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

class IntroList extends StatelessWidget {
  const IntroList({
    required this.image,
    required this.title,
    required this.content,
    Key? key,
  }) : super(key: key);
  final String image;
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: context.sW() / 1.9,
          width: context.sW() / 1.2,
          margin: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: context.sH() / 4,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(fontWeight: FontWeight.w700, fontSize: 28),
        ),
        SizedBox(
          height: context.sH() / 80,
        ),
        Center(
          child: Text(content,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontSize: 12)),
        ),
      ],
    );
  }
}
