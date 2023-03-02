import 'package:bankapp/context.dart';
import 'package:flutter/material.dart';

class ProfileIconCard extends StatelessWidget {
  const ProfileIconCard({
    required this.iconName,
    required this.iconSymbol,
    this.bgColor,
    this.iconColor,
    required this.click,
    this.bgImage,
    Key? key,
  }) : super(key: key);
  final String iconName;
  final IconData iconSymbol;
  final Color? bgColor;
  final Color? iconColor;
  final VoidCallback click;
  final String? bgImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Column(
        children: [
          Container(
            width: context.sW() / 8,
            height: context.sW() / 8,
            decoration: BoxDecoration(
                color: bgColor ?? const Color(0xFFD3E1FF),
                borderRadius: BorderRadius.circular(10)),
            child: bgImage == null
                ? Icon(
                    iconSymbol,
                    color: bgColor == null
                        ? const Color.fromARGB(255, 0, 0, 0)
                        : const Color.fromARGB(255, 255, 252, 252),
                    size: 18,
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      bgImage!,
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
          SizedBox(
            height: context.sW() / 80,
          ),
          Text(
            iconName,
            // AppLocalizations.of(context)!.transfer,
            style:
                Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
