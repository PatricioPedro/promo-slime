import 'package:promo_ecommerce/core/usecase/usecase.dart';
import 'package:promo_ecommerce/domain/product/repository/product.dart';
import 'package:promo_ecommerce/service_locator.dart';

class IsFavoriteUseCase implements UseCase<bool,String> {

  @override
  Future<bool> call({String ? params}) async {
    return await sl<ProductRepository>().isFavorite(params!);
  }

}