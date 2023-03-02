import 'package:auto_route/auto_route.dart';
import 'package:bankapp/screens/BottomNavigationTab/profile_screen.dart';
import 'package:bankapp/screens/BottomNavigationTab/reward_screen.dart';
import 'package:bankapp/screens/BottomNavigationTab/setting_screen.dart';
import 'package:bankapp/screens/add_new_card_screen.dart';
import 'package:bankapp/screens/bottom_navigation.dart';
import 'package:bankapp/screens/BottomNavigationTab/card_setting_screen.dart';
import 'package:bankapp/screens/BottomNavigationTab/home_screen.dart';
import 'package:bankapp/screens/edit_profile_screen.dart';
import 'package:bankapp/screens/notification_screen.dart';
import 'package:bankapp/screens/send_money_profile.dart';
import 'package:bankapp/screens/send_money_screen.dart';
import 'package:bankapp/screens/success_screen.dart';
import 'package:bankapp/screens/transactions_screen.dart';
import '../screens/login_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/intro_screen.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(path: '/', name: 'SplashScreenRoute', page: SplashScreen),
  AutoRoute(path: 'intro_screen', name: 'IntroScreenRoute', page: IntroScreen),
  AutoRoute(path: 'login_screen', name: 'LoginScreenRoute', page: LoginScreen),
  AutoRoute(
      path: 'bottom_navigation',
      name: 'BottomNavigationRoute',
      page: BottomNavigation,
      children: [
        AutoRoute(
            path: 'home_screen', name: 'HomeScreenRoute', page: HomeScreen),
        AutoRoute(
            path: 'card_settingscreen',
            name: 'CardSettingScreenRoute',
            page: CardSettingScreen),
        AutoRoute(
            path: 'profile_screen',
            name: 'ProfileScreenRoute',
            page: ProfileScreen),
        AutoRoute(
            path: 'reward_screen',
            name: 'RewardScreenRoute',
            page: RewardScreen),
        AutoRoute(
            path: 'setting_screen',
            name: 'SettingScreenRoute',
            page: SettingScreen),
      ]),
  AutoRoute(
      path: 'notification_screen',
      name: 'NotificationScreenRoute',
      page: NotificationScreen),
  AutoRoute(
      path: 'add_new_card_screen',
      name: 'AddNewCardScreenRoute',
      page: AddNewCardScreen),
  AutoRoute(
      path: 'send_money_screen',
      name: 'SendMoneyScreenRoute',
      page: SendMoneyScreen),
  AutoRoute(
      path: 'send_money_profile',
      name: 'SendMoneyProfileRoute',
      page: SendMoneyProfile),
  AutoRoute(
      path: 'edit_profile_screen',
      name: 'EditProfileScreenRoute',
      page: EditProfileScreen),
  AutoRoute(
      path: 'transactionsscreen',
      name: 'TransactionsScreenRoute',
      page: TransactionsScreen),
  AutoRoute(
      path: 'successscreen', name: 'SuccessScreenRoute', page: SuccessScreen),
])
class $AppRouter {}
