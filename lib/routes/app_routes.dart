import 'package:flutter_openart_nft/pages/home_page/home_page.dart';
import 'package:flutter_openart_nft/routes/app_pages.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static const initial = Routes.homepage;

  static final routes = [
    GetPage(
      name: Routes.homepage,
      page: () => HomePage(),
    ),
  ];
}
