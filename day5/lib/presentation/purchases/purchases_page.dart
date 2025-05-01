import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/values/colors.dart';
import '../core/values/style_constants.dart';
import '../core/values/text_styles.dart';
import 'widgets/order_card.dart';
import 'widgets/purchases_header.dart';

@RoutePage()
class PurchasesPage extends HookConsumerWidget {
  const PurchasesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTabIndex = useState(0);

    final activeOrders = [
      {
        'id': 'ORD-001',
        'date': 'April 28, 2025',
        'status': 'In Progress',
        'items': [
          {'name': 'Organic Bananas', 'quantity': 2, 'price': '4.99'},
          {'name': 'Fresh Milk', 'quantity': 1, 'price': '3.49'},
        ],
        'total': '13.47',
      },
      {
        'id': 'ORD-002',
        'date': 'April 29, 2025',
        'status': 'Shipped',
        'items': [
          {'name': 'Avocado', 'quantity': 3, 'price': '2.99'},
          {'name': 'Whole Wheat Bread', 'quantity': 1, 'price': '4.29'},
        ],
        'total': '13.26',
      },
    ];

    final completedOrders = [
      {
        'id': 'ORD-003',
        'date': 'April 25, 2025',
        'status': 'Delivered',
        'items': [
          {'name': 'Red Apples', 'quantity': 4, 'price': '0.99'},
          {'name': 'Chicken Breast', 'quantity': 2, 'price': '6.99'},
        ],
        'total': '17.94',
      },
      {
        'id': 'ORD-004',
        'date': 'April 22, 2025',
        'status': 'Delivered',
        'items': [
          {'name': 'Greek Yogurt', 'quantity': 1, 'price': '4.49'},
          {'name': 'Eggs (12 pack)', 'quantity': 1, 'price': '5.29'},
        ],
        'total': '9.78',
      },
      {
        'id': 'ORD-005',
        'date': 'April 18, 2025',
        'status': 'Delivered',
        'items': [
          {'name': 'Oranges', 'quantity': 5, 'price': '1.19'},
          {'name': 'Cheese', 'quantity': 1, 'price': '7.99'},
        ],
        'total': '13.94',
      },
    ];

    final isActiveTab = selectedTabIndex.value == 0;
    final ordersToShow = isActiveTab ? activeOrders : completedOrders;

    return Scaffold(
      body: Column(
        children: [
          const PurchasesHeader(),
          Padding(
            padding: const EdgeInsets.all(AppPaddings.outerPadding),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => selectedTabIndex.value = 0,
                    child: Column(
                      children: [
                        Text(
                          'Active Orders',
                          style: sanFranciscoMedium.copyWith(
                            color: isActiveTab
                                ? AppColors.primaryGreen
                                : AppColors.textGrey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 3,
                          color: isActiveTab
                              ? AppColors.primaryGreen
                              : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => selectedTabIndex.value = 1,
                    child: Column(
                      children: [
                        Text(
                          'Completed',
                          style: sanFranciscoMedium.copyWith(
                            color: !isActiveTab
                                ? AppColors.primaryGreen
                                : AppColors.textGrey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 3,
                          color: !isActiveTab
                              ? AppColors.primaryGreen
                              : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ordersToShow.isEmpty
                ? Center(
                    child: Text(isActiveTab
                        ? 'No active orders'
                        : 'No completed orders'),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(AppPaddings.outerPadding),
                    itemCount: ordersToShow.length,
                    itemBuilder: (context, index) {
                      final order = ordersToShow[index];
                      return OrderCard(
                        orderId: order['id'] as String,
                        date: order['date'] as String,
                        status: order['status'] as String,
                        items: (order['items'] as List)
                            .map((item) =>
                                Map<String, dynamic>.from(item))
                            .toList(),
                        total: order['total'] as String,
                        isActive: isActiveTab,
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
