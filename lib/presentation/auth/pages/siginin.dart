import 'package:promo_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:promo_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:promo_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:promo_ecommerce/data/auth/models/user_signin_req.dart';
import 'package:promo_ecommerce/presentation/auth/pages/enter_password.dart';
import 'package:promo_ecommerce/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(hideBack: true,),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(height: 20,),
            _emailField(context),
            const SizedBox(height: 20,),
            _continueButton(context),
            const SizedBox(height: 20,),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return const Text(
      'Entrar',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _emailCon,
      decoration: const InputDecoration(
        hintText: 'Email'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: (){
        AppNavigator.push(
          context, 
          EnterPasswordPage(
            signinReq: UserSigninReq(
              email: _emailCon.text,
            ),
          )
        );
      },
      title: 'Continuar'
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children:  [
          const TextSpan(
            text: "Você tem uma conta? "
          ),
           TextSpan(
            text: 'Crie uma',
            recognizer:TapGestureRecognizer()..onTap = () {
              AppNavigator.push(context,SignupPage());
            } ,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ]

      ),
    );
  }
}