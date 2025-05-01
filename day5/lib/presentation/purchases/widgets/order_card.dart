// order_card.dart
import 'package:flutter/material.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class OrderCard extends StatelessWidget {
  final String orderId;
  final String date;
  final String status;
  final List<Map<String, dynamic>> items;
  final String total;
  final bool isActive;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.date,
    required this.status,
    required this.items,
    required this.total,
    required this.isActive,
  });

  Color _getStatusColor() {
    switch (status) {
      case 'In Progress':
        return Colors.orange;
      case 'Shipped':
        return Colors.blue;
      case 'Delivered':
        return AppColors.primaryGreen;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orderId,
                  style: sanFranciscoSemiBold.copyWith(fontSize: 16),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _getStatusColor().withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    status,
                    style: sanFranciscoMedium.copyWith(
                      color: _getStatusColor(),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.shopping_bag_outlined,
                                color: AppColors.primaryGreen,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name'] as String,
                                  style: sanFranciscoRegular.copyWith(fontSize: 14),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'Qty: ${item['quantity']}',
                                  style: sanFranciscoRegular.copyWith(
                                    fontSize: 12,
                                    color: AppColors.textGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$${item['price']}',
                      style: sanFranciscoSemiBold.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              );
            },
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ordered on',
                      style: sanFranciscoRegular.copyWith(
                        color: AppColors.textGrey,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      date,
                      style: sanFranciscoMedium.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount',
                      style: sanFranciscoSemiBold.copyWith(fontSize: 16),
                    ),
                    Text(
                      '\$$total',
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
          if (isActive)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Text(
                'Track Order',
                style: sanFranciscoSemiBold.copyWith(
                  color: Colors.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}