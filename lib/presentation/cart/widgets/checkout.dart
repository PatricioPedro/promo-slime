import 'package:promo_ecommerce/common/helper/cart/cart.dart';
import 'package:promo_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:promo_ecommerce/common/widgets/button/basic_app_button.dart';
import 'package:promo_ecommerce/core/configs/theme/app_colors.dart';
import 'package:promo_ecommerce/presentation/cart/pages/checkout.dart';
import 'package:flutter/material.dart';

import '../../../domain/order/entities/product_ordered.dart';

class Checkout extends StatelessWidget {
  final List<ProductOrderedEntity> products;
  const Checkout({
    required this.products,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height / 3.5,
      color: AppColors.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Subtotal',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
              ),
              Text(
                'AOA${CartHelper.calculateCartSubtotal(products).toString()}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              )
            ],
          ),
             const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Frete',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
              ),
              Text(
                'AOA8',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              )
            ],
          ),
             const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Imposto',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
              ),
              Text(
                'AOA 0.0',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
              ),
              Text(
                'AOA${CartHelper.calculateCartSubtotal(products) + 8 }',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              )
            ],
          ),
          BasicAppButton(
            onPressed: (){
              AppNavigator.push(context, CheckOutPage(products: products,));
            },
            title: 'Checkout',
          )
        ],
      ),
    );
  }
}