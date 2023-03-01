import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    required this.image,
    required this.name,
    required this.date,
    required this.rate,
    required this.time,
    Key? key,
  }) : super(key: key);
  final String image;
  final String name;
  final String date;
  final String rate;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: context.sW() / 7,
          width: context.sW() / 8,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: context.sW() / 7,
                width: context.sW() / 7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
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
                        color: Colors.white,
                        border: Border.all(color: Colors.white)),
                    child: Image.asset('assets/icons/arrowup.png')),
              ),
            ],
          ),
        ),
        SizedBox(
          width: context.sW() / 1.8,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    rate,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontSize: 9),
                  ),
                  Text(
                    time,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontSize: 9),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
