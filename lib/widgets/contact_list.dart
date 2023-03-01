import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    required this.image,
    required this.name,
    required this.email,
    Key? key,
  }) : super(key: key);
  final String image;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: context.sW() / 12,
          width: context.sW() / 12,
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
                name,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              email,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontSize: 9, color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
