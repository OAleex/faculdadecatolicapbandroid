import 'package:faculdadecatolicapbandroid/widgets/app_bar/custom_app_bar.dart';
import 'package:faculdadecatolicapbandroid/widgets/app_bar/appbar_title.dart';
import 'package:faculdadecatolicapbandroid/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/pginalistadealunos_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:faculdadecatolicapbandroid/core/app_export.dart';

class PGinaListaDeAlunosScreen extends StatelessWidget {
  const PGinaListaDeAlunosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 16.h, top: 41.v, right: 16.h),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 22.v);
            },
            itemCount:
                1, // Apenas uma instância do PginalistadealunosItemWidget
            itemBuilder: (context, index) {
              return PginalistadealunosItemWidget(
                onTapLeslieAlexander: () {
                  onTapLeslieAlexander(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(text: "Lista de Alunos "),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLock,
          margin: EdgeInsets.all(12.h),
          onTap: () {
            onTapLock(context);
          },
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Navigates to the pGinaDePerfilDoProfissionalScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pGinaDePerfilDoProfissionalScreen);
  }

  /// Navigates to the pGinaDePerfilDoProfissionalScreen when the action is triggered.
  onTapLeslieAlexander(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pGinaDePerfilDoAlunoScreen);
  }
}
