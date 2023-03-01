// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:flutter/src/widgets/framework.dart' as _i19;

import '../BottomNavigationTab/card_setting_screen.dart' as _i13;
import '../BottomNavigationTab/home_screen.dart' as _i12;
import '../BottomNavigationTab/profile_screen.dart' as _i14;
import '../BottomNavigationTab/reward_screen.dart' as _i15;
import '../BottomNavigationTab/setting_screen.dart' as _i16;
import '../screens/add_new_card_screen.dart' as _i6;
import '../screens/bottom_navigation.dart' as _i4;
import '../screens/edit_profile_screen.dart' as _i9;
import '../screens/intro_screen.dart' as _i2;
import '../screens/login_screen.dart' as _i3;
import '../screens/notification_screen.dart' as _i5;
import '../screens/send_money_profile.dart' as _i8;
import '../screens/send_money_screen.dart' as _i7;
import '../screens/splash_screen.dart' as _i1;
import '../screens/success_screen.dart' as _i11;
import '../screens/transactions_screen.dart' as _i10;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    IntroScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.IntroScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
    BottomNavigationRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.BottomNavigation(),
      );
    },
    NotificationScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.NotificationScreen(),
      );
    },
    AddNewCardScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AddNewCardScreen(),
      );
    },
    SendMoneyScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SendMoneyScreen(),
      );
    },
    SendMoneyProfileRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SendMoneyProfile(),
      );
    },
    EditProfileScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.EditProfileScreen(),
      );
    },
    TransactionsScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.TransactionsScreen(),
      );
    },
    SuccessScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SuccessScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.HomeScreen(),
      );
    },
    CardSettingScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CardSettingScreenRouteArgs>(
          orElse: () => const CardSettingScreenRouteArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.CardSettingScreen(key: args.key),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ProfileScreen(),
      );
    },
    RewardScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.RewardScreen(),
      );
    },
    SettingScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.SettingScreen(),
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i17.RouteConfig(
          IntroScreenRoute.name,
          path: 'intro_screen',
        ),
        _i17.RouteConfig(
          LoginScreenRoute.name,
          path: 'login_screen',
        ),
        _i17.RouteConfig(
          BottomNavigationRoute.name,
          path: 'bottom_navigation',
          children: [
            _i17.RouteConfig(
              HomeScreenRoute.name,
              path: 'home_screen',
              parent: BottomNavigationRoute.name,
            ),
            _i17.RouteConfig(
              CardSettingScreenRoute.name,
              path: 'card_settingscreen',
              parent: BottomNavigationRoute.name,
            ),
            _i17.RouteConfig(
              ProfileScreenRoute.name,
              path: 'profile_screen',
              parent: BottomNavigationRoute.name,
            ),
            _i17.RouteConfig(
              RewardScreenRoute.name,
              path: 'reward_screen',
              parent: BottomNavigationRoute.name,
            ),
            _i17.RouteConfig(
              SettingScreenRoute.name,
              path: 'setting_screen',
              parent: BottomNavigationRoute.name,
            ),
          ],
        ),
        _i17.RouteConfig(
          NotificationScreenRoute.name,
          path: 'notification_screen',
        ),
        _i17.RouteConfig(
          AddNewCardScreenRoute.name,
          path: 'add_new_card_screen',
        ),
        _i17.RouteConfig(
          SendMoneyScreenRoute.name,
          path: 'send_money_screen',
        ),
        _i17.RouteConfig(
          SendMoneyProfileRoute.name,
          path: 'send_money_profile',
        ),
        _i17.RouteConfig(
          EditProfileScreenRoute.name,
          path: 'edit_profile_screen',
        ),
        _i17.RouteConfig(
          TransactionsScreenRoute.name,
          path: 'transactionsscreen',
        ),
        _i17.RouteConfig(
          SuccessScreenRoute.name,
          path: 'successscreen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i17.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.IntroScreen]
class IntroScreenRoute extends _i17.PageRouteInfo<void> {
  const IntroScreenRoute()
      : super(
          IntroScreenRoute.name,
          path: 'intro_screen',
        );

  static const String name = 'IntroScreenRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreenRoute extends _i17.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: 'login_screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i4.BottomNavigation]
class BottomNavigationRoute extends _i17.PageRouteInfo<void> {
  const BottomNavigationRoute({List<_i17.PageRouteInfo>? children})
      : super(
          BottomNavigationRoute.name,
          path: 'bottom_navigation',
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';
}

/// generated route for
/// [_i5.NotificationScreen]
class NotificationScreenRoute extends _i17.PageRouteInfo<void> {
  const NotificationScreenRoute()
      : super(
          NotificationScreenRoute.name,
          path: 'notification_screen',
        );

  static const String name = 'NotificationScreenRoute';
}

/// generated route for
/// [_i6.AddNewCardScreen]
class AddNewCardScreenRoute extends _i17.PageRouteInfo<void> {
  const AddNewCardScreenRoute()
      : super(
          AddNewCardScreenRoute.name,
          path: 'add_new_card_screen',
        );

  static const String name = 'AddNewCardScreenRoute';
}

/// generated route for
/// [_i7.SendMoneyScreen]
class SendMoneyScreenRoute extends _i17.PageRouteInfo<void> {
  const SendMoneyScreenRoute()
      : super(
          SendMoneyScreenRoute.name,
          path: 'send_money_screen',
        );

  static const String name = 'SendMoneyScreenRoute';
}

/// generated route for
/// [_i8.SendMoneyProfile]
class SendMoneyProfileRoute extends _i17.PageRouteInfo<void> {
  const SendMoneyProfileRoute()
      : super(
          SendMoneyProfileRoute.name,
          path: 'send_money_profile',
        );

  static const String name = 'SendMoneyProfileRoute';
}

/// generated route for
/// [_i9.EditProfileScreen]
class EditProfileScreenRoute extends _i17.PageRouteInfo<void> {
  const EditProfileScreenRoute()
      : super(
          EditProfileScreenRoute.name,
          path: 'edit_profile_screen',
        );

  static const String name = 'EditProfileScreenRoute';
}

/// generated route for
/// [_i10.TransactionsScreen]
class TransactionsScreenRoute extends _i17.PageRouteInfo<void> {
  const TransactionsScreenRoute()
      : super(
          TransactionsScreenRoute.name,
          path: 'transactionsscreen',
        );

  static const String name = 'TransactionsScreenRoute';
}

/// generated route for
/// [_i11.SuccessScreen]
class SuccessScreenRoute extends _i17.PageRouteInfo<void> {
  const SuccessScreenRoute()
      : super(
          SuccessScreenRoute.name,
          path: 'successscreen',
        );

  static const String name = 'SuccessScreenRoute';
}

/// generated route for
/// [_i12.HomeScreen]
class HomeScreenRoute extends _i17.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: 'home_screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i13.CardSettingScreen]
class CardSettingScreenRoute
    extends _i17.PageRouteInfo<CardSettingScreenRouteArgs> {
  CardSettingScreenRoute({_i19.Key? key})
      : super(
          CardSettingScreenRoute.name,
          path: 'card_settingscreen',
          args: CardSettingScreenRouteArgs(key: key),
        );

  static const String name = 'CardSettingScreenRoute';
}

class CardSettingScreenRouteArgs {
  const CardSettingScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'CardSettingScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileScreenRoute extends _i17.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile_screen',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i15.rewardscreen]
class RewardScreenRoute extends _i17.PageRouteInfo<void> {
  const RewardScreenRoute()
      : super(
          RewardScreenRoute.name,
          path: 'reward_screen',
        );

  static const String name = 'RewardScreenRoute';
}

/// generated route for
/// [_i16.settingscreen]
class SettingScreenRoute extends _i17.PageRouteInfo<void> {
  const SettingScreenRoute()
      : super(
          SettingScreenRoute.name,
          path: 'setting_screen',
        );

  static const String name = 'SettingScreenRoute';
}
