import 'package:promo_ecommerce/core/usecase/usecase.dart';
import 'package:promo_ecommerce/domain/auth/repository/auth.dart';
import 'package:promo_ecommerce/service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool,dynamic> {

  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }

}