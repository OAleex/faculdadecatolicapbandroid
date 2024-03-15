import 'package:flutter/material.dart';
import 'package:faculdadecatolicapbandroid/core/app_export.dart';
import 'package:faculdadecatolicapbandroid/widgets/custom_text_form_field.dart';
import 'package:faculdadecatolicapbandroid/widgets/custom_elevated_button.dart';

class PGinaDeLoginScreen extends StatefulWidget {
  PGinaDeLoginScreen({Key? key}) : super(key: key);

  @override
  _PGinaDeLoginScreenState createState() => _PGinaDeLoginScreenState();
}

class _PGinaDeLoginScreenState extends State<PGinaDeLoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController inputSenhaController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogoCatolicaD102x271,
                      height: 102.v,
                      width: 271.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 59.v),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "Digite seu e-mail",
                      textInputType: TextInputType.emailAddress,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 8.v, 15.h, 8.v),
                        child: CustomImageView(
                          imagePath: ImageConstant
                              .imgAlternateemailfill0wght400grad0opsz241,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(maxHeight: 40.v),
                      autofocus: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, digite seu e-mail';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 36.v),
                    CustomTextFormField(
                      controller: inputSenhaController,
                      hintText: "Digite sua senha",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 8.v, 15.h, 8.v),
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgPasswordfill0wght400grad0opsz241,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(maxHeight: 40.v),
                      suffix: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 8.v, 16.h, 8.v),
                          child: CustomImageView(
                            imagePath: _isObscure
                                ? ImageConstant
                                    .imgVisibilityfill0wght400grad0opsz241
                                : ImageConstant
                                    .imgVisibilityfill0wght400grad0opsz241,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(maxHeight: 40.v),
                      obscureText: _isObscure,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.v),
                      autofocus: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, digite sua senha';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40.v),
                    CustomElevatedButton(
                      text: "Entrar",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          onTapEntrar(context);
                        }
                      },
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the pGinaListaDeAlunosScreen when the action is triggered.
  onTapEntrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pGinaListaDeAlunosScreen);
  }
}
