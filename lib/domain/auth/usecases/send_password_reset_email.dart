import 'package:dartz/dartz.dart';
import 'package:promo_ecommerce/core/usecase/usecase.dart';
import 'package:promo_ecommerce/domain/auth/repository/auth.dart';
import 'package:promo_ecommerce/service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either,String> {

  @override
  Future<Either> call({String ? params}) async {
    return sl<AuthRepository>().sendPasswordResetEmail(params!);
  }

}