import 'package:auto_route/auto_route.dart';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBodyBehindAppBar: true,
      routes: [
        const HomeScreenRoute(),
        CardSettingScreenRoute(),
        const RewardScreenRoute(),
        const SettingScreenRoute(),
        const ProfileScreenRoute(),
      ],
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBuilder: ((context, tabsRouter) {
        return Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
          child: FloatingNavbar(
            padding: const EdgeInsets.all(7),
            borderRadius: 22,
            onTap: tabsRouter.setActiveIndex,
            currentIndex: tabsRouter.activeIndex,
            backgroundColor: const Color(0xFFD3E1FF),
            selectedBackgroundColor: Colors.transparent,
            items: [
              FloatingNavbarItem(
                  customWidget: Image.asset('assets/icons/home.png',
                      height: 24,
                      color: tabsRouter.activeIndex == 0
                          ? const Color(0xFF0039BE)
                          : const Color.fromARGB(255, 0, 0, 0))),
              FloatingNavbarItem(
                  customWidget: Image.asset(
                'assets/icons/card.png',
                height: 24,
                color: tabsRouter.activeIndex == 1
                    ? const Color(0xFF0039BE)
                    : const Color.fromARGB(255, 0, 0, 0),
              )),
              FloatingNavbarItem(
                  customWidget: Image.asset(
                'assets/icons/rewards.png',
                height: 24,
                color: tabsRouter.activeIndex == 2
                    ? const Color(0xFF0039BE)
                    : const Color.fromARGB(255, 0, 0, 0),
              )),
              FloatingNavbarItem(
                  customWidget: Image.asset(
                'assets/icons/settings.png',
                height: 24,
                color: tabsRouter.activeIndex == 3
                    ? const Color(0xFF0039BE)
                    : const Color.fromARGB(255, 0, 0, 0),
              )),
              FloatingNavbarItem(
                  customWidget: Image.asset(
                'assets/icons/user.png',
                height: 24,
                color: tabsRouter.activeIndex == 4
                    ? const Color(0xFF0039BE)
                    : const Color.fromARGB(255, 0, 0, 0),
              )),
            ],
          ),
        );
      }),
    );
  }
}
