import 'package:dartz/dartz.dart';
import 'package:promo_ecommerce/core/usecase/usecase.dart';
import 'package:promo_ecommerce/data/order/models/add_to_cart_req.dart';
import 'package:promo_ecommerce/domain/order/repository/order.dart';
import 'package:promo_ecommerce/service_locator.dart';

class AddToCartUseCase implements UseCase<Either,AddToCartReq> {
  @override
  Future<Either> call({AddToCartReq ? params}) async {
    return sl<OrderRepository>().addToCart(params!);
  }

}