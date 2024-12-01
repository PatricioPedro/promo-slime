import 'package:dartz/dartz.dart';
import 'package:promo_ecommerce/core/usecase/usecase.dart';
import 'package:promo_ecommerce/domain/order/repository/order.dart';
import 'package:promo_ecommerce/service_locator.dart';

class GetOrdersUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({dynamic params}) async {
    return sl<OrderRepository>().getOrders();
  }

}