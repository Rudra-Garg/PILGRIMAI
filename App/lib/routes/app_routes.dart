import 'package:Pilgrim/presentation/help_resources_screen/binding/help_resources_binding.dart';
import 'package:Pilgrim/presentation/help_resources_screen/help_resources_screen.dart';
import 'package:Pilgrim/presentation/home_page_screen/home_page_screen.dart';
import 'package:Pilgrim/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:Pilgrim/presentation/why_pilgrim_screen/why_pilgrim_screen.dart';
import 'package:Pilgrim/presentation/why_pilgrim_screen/binding/why_pilgrim_binding.dart';
import 'package:Pilgrim/presentation/the_pilgrim_screen/the_pilgrim_screen.dart';
import 'package:Pilgrim/presentation/the_pilgrim_screen/binding/the_pilgrim_binding.dart';
import 'package:Pilgrim/presentation/about_us_screen/about_us_screen.dart';
import 'package:Pilgrim/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:Pilgrim/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:Pilgrim/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';


class AppRoutes {
  static const String homePageScreen = '/home_page_screen';
  static const String thePilgrimScreen = '/the_pilgrim_screen';
  static const String whyPilgrimScreen = '/why_pilgrim_screen';
  static const String aboutUsScreen = '/about_us_screen';
  static const String helpResourcesScreen = '/help_resources_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: whyPilgrimScreen,
      page: () => WhyPilgrimScreen(),
      bindings: [
        WhyPilgrimBinding(),
      ],
    ),
    GetPage(
      name: thePilgrimScreen,
      page: () => ThePilgrimScreen(),
      bindings: [
        ThePilgrimBinding(),
      ],
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: helpResourcesScreen,
      page: () => HelpResourcesScreen(),
      bindings: [
        HelpResourcesBinding(),
      ],
    )
  ];
}
