import 'package:dartz/dartz.dart';
import 'package:promo_ecommerce/core/usecase/usecase.dart';
import 'package:promo_ecommerce/data/auth/models/user_creation_req.dart';
import 'package:promo_ecommerce/domain/auth/repository/auth.dart';
import 'package:promo_ecommerce/service_locator.dart';

class SignupUseCase implements UseCase<Either,UserCreationReq> {


  @override
  Future<Either> call({UserCreationReq ? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }

  
}