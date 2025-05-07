import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/cart/cart_provider.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class CheckoutDialog extends ConsumerWidget {
  final double totalAmount;
  
  const CheckoutDialog({
    super.key,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Dialog Header
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.textGrey,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Text(
                  'Checkout',
                  style: sanFranciscoBold.copyWith(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Order Summary
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.containerWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Amount:',
                        style: sanFranciscoMedium.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$${totalAmount.toStringAsFixed(2)}',
                        style: sanFranciscoBold.copyWith(
                          fontSize: 16,
                          color: AppColors.primaryGreen,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // Payment Options
            Text(
              'Select Payment Method',
              style: sanFranciscoMedium.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10),
            
            // Payment Method Buttons
            Column(
              children: [
                _buildPaymentMethodButton(
                  context,
                  icon: Icons.credit_card,
                  label: 'Credit/Debit Card',
                  selected: true,
                ),
                const SizedBox(height: 10),
                _buildPaymentMethodButton(
                  context,
                  icon: Icons.account_balance_wallet,
                  label: 'Digital Wallet',
                  selected: false,
                ),
                const SizedBox(height: 10),
                _buildPaymentMethodButton(
                  context,
                  icon: Icons.money,
                  label: 'Cash on Delivery',
                  selected: false,
                ),
              ],
            ),
            const SizedBox(height: 30),
            
            // Checkout Button
            GestureDetector(
              onTap: () {
                // Process payment (mock)
                Navigator.of(context).pop();
                
                // Show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Order placed successfully!',
                      style: sanFranciscoRegular.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: AppColors.primaryGreen,
                    duration: const Duration(seconds: 3),
                  ),
                );
                
                // Clear cart
                ref.read(cartStateProvider.notifier).clearCart();
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryGreen,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Confirm Payment',
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
      ),
    );
  }
  
  Widget _buildPaymentMethodButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required bool selected,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: selected ? AppColors.primaryGreen.withOpacity(0.1) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: selected ? AppColors.primaryGreen : AppColors.dividerGrey,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: selected ? AppColors.primaryGreen : AppColors.textGrey,
          ),
          const SizedBox(width: 15),
          Text(
            label,
            style: sanFranciscoMedium.copyWith(
              fontSize: 14,
              color: selected ? AppColors.primaryGreen : AppColors.textGrey,
            ),
          ),
          const Spacer(),
          if (selected)
            Icon(
              Icons.check_circle,
              color: AppColors.primaryGreen,
            ),
        ],
      ),
    );
  }
}