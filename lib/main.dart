import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_openart_nft/routes/app_routes.dart';
import 'package:flutter_openart_nft/shared/theme.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: AppColorGrayscale.background, // status bar
      statusBarIconBrightness: Brightness.dark // color
      ));
  runApp(const OpenArtNFT());
}

class OpenArtNFT extends StatelessWidget {
  const OpenArtNFT({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
