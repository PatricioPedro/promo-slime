import 'package:promo_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:promo_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:promo_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:promo_ecommerce/data/auth/models/user_creation_req.dart';
import 'package:promo_ecommerce/presentation/auth/pages/gender_and_age_selection.dart';
import 'package:promo_ecommerce/presentation/auth/pages/siginin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 40
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(),
            const SizedBox(height: 20,),
            _firstNameField(),
            const SizedBox(height: 20,),
            _lastNameField(),
            const SizedBox(height: 20,),
            _emailField(),
            const SizedBox(height: 20,),
            _passwordField(context),
            const SizedBox(height: 20,),
            _continueButton(context),
            const SizedBox(height: 20,),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _siginText() {
    return const Text(
      'Criar uma conta',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _firstNameField() {
    return TextField(
      controller: _firstNameCon,
      decoration: const InputDecoration(
        hintText: 'Primeiro Nome'
      ),
    );
  }

  Widget _lastNameField() {
    return TextField(
      controller: _lastNameCon,
      decoration: const InputDecoration(
        hintText: 'Último nome'
      ),
    );
  }

  Widget _emailField() {
    return TextField(
      controller: _emailCon,
      decoration: const InputDecoration(
        hintText: 'Endereço de email'
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _passwordCon,
      decoration: const InputDecoration(
        hintText: 'Senha'
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: (){
        AppNavigator.push(
          context,
          GenderAndAgeSelectionPage(
            userCreationReq: UserCreationReq(
              firstName: _firstNameCon.text,
              email: _emailCon.text, 
              lastName: _lastNameCon.text,
              password: _passwordCon.text
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
            text: 'Entrar',
            recognizer:TapGestureRecognizer()..onTap = () {
              AppNavigator.pushReplacement(context, SigninPage());
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