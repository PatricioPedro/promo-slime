import 'package:dartz/dartz.dart';
import 'package:promo_ecommerce/core/usecase/usecase.dart';
import 'package:promo_ecommerce/domain/product/repository/product.dart';
import 'package:promo_ecommerce/service_locator.dart';

class GetNewInUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({dynamic params}) async {
    return await sl<ProductRepository>().getNewIn();
  }

}