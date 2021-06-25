import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_style.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({required this.onTap, Key? key}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: AppColors.stroke,
            )),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(AppImages.google),
            ),
            //VerticalDivider(),
            const BuildVerticalDivider(
              color: AppColors.stroke,
              thickness: 1,
            ),
            Expanded(
              child: Text(
                'Entrar com o Google',
                style: TextStyles.buttonBoldGray,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildVerticalDivider extends StatelessWidget {
  const BuildVerticalDivider(
      {required this.color, required this.thickness, Key? key})
      : super(key: key);

  final Color color;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: Divider.createBorderSide(context,
                  color: color, width: thickness),
            ),
          ),
        ),
      ),
    );
  }
}
