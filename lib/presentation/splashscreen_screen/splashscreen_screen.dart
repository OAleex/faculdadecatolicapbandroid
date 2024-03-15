import 'package:flutter/material.dart';
import 'package:faculdadecatolicapbandroid/core/app_export.dart';
import 'package:faculdadecatolicapbandroid/presentation/p_gina_de_login_screen/p_gina_de_login_screen.dart';

class SplashscreenScreen extends StatelessWidget {
  const SplashscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PGinaDeLoginScreen()));
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 53.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogoCatolicaD,
                height: 102.v,
                width: 105.h,
              ),
              Spacer(
                flex: 49,
              ),
              SizedBox(
                width: 170.h,
                child: Text(
                  "Saudações,\nagradecemos por usar\nnosso aplicativo",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeInterWhiteA700,
                ),
              ),
              Spacer(
                flex: 50,
              ),
              Text(
                "Versão 0.0.1.pre-alpha",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
