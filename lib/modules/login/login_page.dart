import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_style.dart';
import 'package:payflow/shared/widgets/login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    color: AppColors.primary,
                    height: 220,
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 40,
                    child: Image.asset(
                      AppImages.person,
                      height: 273,
                      width: 208,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Image.asset(AppImages.logoMini),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 70, right: 70, top: 30, bottom: 30),
                  child: Text(
                    'Organize os seus boletos em um só lugar',
                    style: TextStyles.titleHome,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SocialLoginButton(
                    onTap: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );

/*
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(220),
          child: Container(
            color: AppColors.primary,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  child: Image.asset(
                    AppImages.person,
                    height: 273,
                    width: 208,
                  ),
                  right: 0,
                  left: 0,
                  top: 40,
                ),
              ],
            ),
          ),
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset(AppImages.logoMini),
            Padding(
              padding: const EdgeInsets.only(
                  left: 70, right: 70, top: 30, bottom: 30),
              child: Text(
                'Organize os seus boletos em um só lugar',
                style: TextStyles.titleHome,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SocialLoginButton(
                onTap: () {},
              ),
            )
          ],
        ));
    */
  }
}
