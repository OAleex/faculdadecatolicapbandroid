import 'package:flutter/material.dart';
import 'package:faculdadecatolicapbandroid/core/app_export.dart';

class PginalistadealunosItemWidget extends StatelessWidget {
  PginalistadealunosItemWidget({
    Key? key,
    this.onTapLeslieAlexander,
  }) : super(
          key: key,
        );

  final VoidCallback? onTapLeslieAlexander;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildItem("Leslie Alexander", 5, ImageConstant.imgEllipse1, context),
        _buildItem("Jenny Wilson", 5, ImageConstant.imgEllipse140x40, context),
        _buildItem("Jacob Jones", 6, ImageConstant.imgEllipse11, context),
        _buildItem("Jane Cooper", 6, ImageConstant.imgEllipse12, context),
        _buildItem("Cody Fisher", 7, ImageConstant.imgEllipse13, context),
      ],
    );
  }

  Widget _buildItem(
      String name, int period, String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapLeslieAlexander?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath:
                  imagePath, // Utilizando a variável para o caminho da imagem
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 10.v,
                bottom: 10.v,
              ),
              child: Text(
                name,
                style: CustomTextStyles.bodyLargeOnPrimary,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Text(
                "P$period",
                style: CustomTextStyles.bodyLargeOnPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
