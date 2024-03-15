import 'package:faculdadecatolicapbandroid/core/utils/size_utils.dart';
import 'package:faculdadecatolicapbandroid/routes/app_routes.dart';
import 'package:faculdadecatolicapbandroid/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'faculdadecatolicapbandroid',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashscreenScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
