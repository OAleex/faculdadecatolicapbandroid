import 'package:faculdadecatolicapbandroid/widgets/app_bar/custom_app_bar.dart';
import 'package:faculdadecatolicapbandroid/widgets/app_bar/appbar_leading_image.dart';
import 'package:faculdadecatolicapbandroid/widgets/app_bar/appbar_title.dart';
import 'package:faculdadecatolicapbandroid/widgets/app_bar/appbar_trailing_image.dart';
import 'package:faculdadecatolicapbandroid/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:faculdadecatolicapbandroid/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PGinaDePerfilDoProfissionalScreen extends StatelessWidget {
  PGinaDePerfilDoProfissionalScreen({Key? key}) : super(key: key);

  TextEditingController inputNomeController = TextEditingController();

  TextEditingController inputDocumentoController = TextEditingController();

  TextEditingController inputTelefoneController = TextEditingController();

  TextEditingController inputTrabalhoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 42.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.img42380783629905,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(50.h)),
                  SizedBox(height: 22.v),
                  _buildInputNome(context),
                  SizedBox(height: 22.v),
                  _buildInputDocumento(context),
                  SizedBox(height: 22.v),
                  _buildInputTelefone(context),
                  SizedBox(height: 22.v),
                  _buildInputTrabalho(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Meu Perfil"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLogoutFill0Wg,
              margin: EdgeInsets.all(12.h),
              onTap: () {
                onTapLogoutFILLWg(context);
              })
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildInputNome(BuildContext context) {
    return CustomTextFormField(
        controller: inputNomeController,
        hintText: "Renê Nóbrega",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 15.h, 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgPersonfill0wght400grad0opsz241,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        autofocus: false,
        prefixConstraints: BoxConstraints(maxHeight: 40.v));
  }

  /// Section Widget
  Widget _buildInputDocumento(BuildContext context) {
    return CustomTextFormField(
        controller: inputDocumentoController,
        hintText: "000.000.000-00",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 15.h, 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        autofocus: false,
        prefixConstraints: BoxConstraints(maxHeight: 40.v));
  }

  /// Section Widget
  Widget _buildInputTelefone(BuildContext context) {
    return CustomTextFormField(
        controller: inputTelefoneController,
        hintText: "(83) 9 9999-9999",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 15.h, 9.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCall,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        autofocus: false,
        prefixConstraints: BoxConstraints(maxHeight: 40.v));
  }

  /// Section Widget
  Widget _buildInputTrabalho(BuildContext context) {
    return CustomTextFormField(
        controller: inputTrabalhoController,
        hintText: "Coordenador",
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 15.h, 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgWorkfill0wght400grad0opsz241,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        autofocus: false,
        prefixConstraints: BoxConstraints(maxHeight: 40.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the pGinaDeLoginScreen when the action is triggered.
  onTapLogoutFILLWg(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pGinaDeLoginScreen);
  }
}
