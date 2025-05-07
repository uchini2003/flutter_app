import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/cart/cart_provider.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';
import 'checkout_dialog.dart';

class CartTotalSection extends ConsumerWidget {
  const CartTotalSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalAmount = ref.watch(
      cartStateProvider.select((state) => state.totalAmount),
    );
    final items = ref.watch(
      cartStateProvider.select((state) => state.items),
    );
    
    const deliveryFee = 5.99;
    final tax = totalAmount * 0.08; // 8% tax
    final finalTotal = totalAmount + deliveryFee + tax;
    
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.cardShadow,
            blurRadius: 5,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Summary',
            style: sanFranciscoBold.copyWith(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15),
          // Subtotal Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal (${items.size} items)',
                style: sanFranciscoRegular.copyWith(
                  fontSize: 14,
                  color: AppColors.textGrey,
                ),
              ),
              Text(
                '\$${totalAmount.toStringAsFixed(2)}',
                style: sanFranciscoSemiBold.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Delivery Fee Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Fee',
                style: sanFranciscoRegular.copyWith(
                  fontSize: 14,
                  color: AppColors.textGrey,
                ),
              ),
              Text(
                '\$${deliveryFee.toStringAsFixed(2)}',
                style: sanFranciscoSemiBold.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Tax Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tax',
                style: sanFranciscoRegular.copyWith(
                  fontSize: 14,
                  color: AppColors.textGrey,
                ),
              ),
              Text(
                '\$${tax.toStringAsFixed(2)}',
                style: sanFranciscoSemiBold.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          // Divider
          const Divider(thickness: 1),
          const SizedBox(height: 15),
          // Total Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: sanFranciscoBold.copyWith(
                  fontSize: 18,
                ),
              ),
              Text(
                '\$${finalTotal.toStringAsFixed(2)}',
                style: sanFranciscoBold.copyWith(
                  fontSize: 18,
                  color: AppColors.primaryGreen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Checkout Button
          GestureDetector(
   onTap: items.isEmpty() 
    ? null 
    : () {
        showDialog(
          context: context,
          builder: (context) => CheckoutDialog(
            totalAmount: finalTotal,
          ),
        );
      },
child: Container(
  width: double.infinity,
  height: 50,
  decoration: BoxDecoration(
    color: items.isEmpty() ? AppColors.secondaryGrey : AppColors.primaryGreen,
    borderRadius: BorderRadius.circular(10),
  ),
  
              child: Center(
                child: Text(
                  'Proceed to Checkout',
                  style: sanFranciscoSemiBold.copyWith(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}