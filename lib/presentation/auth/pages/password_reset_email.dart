import 'package:promo_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:promo_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:promo_ecommerce/core/configs/assets/app_vectors.dart';
import 'package:promo_ecommerce/presentation/auth/pages/siginin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordResetEmailPage extends StatelessWidget {
  const PasswordResetEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _emailSending(),
          const SizedBox(height: 30,),
          _sentEmail(),
          const SizedBox(height: 30,),
          _returnToLoginButton(context)
        ],
      ),
    );
  }
  Widget _emailSending() {
    return Center(
      child: SvgPicture.asset(
        AppVectors.emailSending
      ),
    );
  }

  Widget _sentEmail() {
    return const Center(
      child: Text(
        'Enviamos um e-mail para você redefinir sua senha.'
      ),
    );
  }

  Widget _returnToLoginButton(BuildContext context) {
    return BasicAppButton(
      onPressed: (){
        AppNavigator.pushReplacement(context, SigninPage());
      },
      width: 200,
      title: 'Ir para Login'
    );
  }
}