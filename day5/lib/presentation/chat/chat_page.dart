import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/values/colors.dart';
import '../core/values/style_constants.dart';
import '../core/values/text_styles.dart';
import 'widgets/chat_header.dart';
import 'widgets/conversation_card.dart';

@RoutePage()
class ChatPage extends HookConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTabIndex = useState(0);
    
    // Sample conversations
    final recentChats = [
      {
        'id': '1',
        'name': 'Customer Support',
        'avatar': 'https://via.placeholder.com/150',
        'lastMessage': 'Your order is on the way!',
        'timestamp': '10:20 AM',
        'unread': 2,
      },
      {
        'id': '2',
        'name': 'Delivery Team',
        'avatar': 'https://via.placeholder.com/150',
        'lastMessage': 'Hello, we will reach you in 10 minutes.',
        'timestamp': 'Yesterday',
        'unread': 0,
      },
      {
        'id': '3',
        'name': 'Fresh Farms Store',
        'avatar': 'https://via.placeholder.com/150',
        'lastMessage': 'We have a special discount for you!',
        'timestamp': 'Apr 25',
        'unread': 1,
      },
    ];
    
    final helpTopics = [
      {
        'icon': Icons.local_shipping_outlined,
        'title': 'Shipping & Delivery',
        'description': 'Get help with your deliveries',
      },
      {
        'icon': Icons.assignment_return_outlined,
        'title': 'Returns & Refunds',
        'description': 'Return policies and processes',
      },
      {
        'icon': Icons.payment_outlined,
        'title': 'Payment Issues',
        'description': 'Questions about payments',
      },
      {
        'icon': Icons.shopping_bag_outlined,
        'title': 'Orders',
        'description': 'Track and manage your orders',
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          const ChatHeader(),
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
                          'Messages',
                          style: sanFranciscoMedium.copyWith(
                            color: selectedTabIndex.value == 0
                                ? AppColors.primaryGreen
                                : AppColors.textGrey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 3,
                          color: selectedTabIndex.value == 0
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
                          'Help Topics',
                          style: sanFranciscoMedium.copyWith(
                            color: selectedTabIndex.value == 1
                                ? AppColors.primaryGreen
                                : AppColors.textGrey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 3,
                          color: selectedTabIndex.value == 1
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
            child: selectedTabIndex.value == 0
                ? recentChats.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              size: 64,
                              color: AppColors.textGrey.withOpacity(0.5),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'No messages yet',
                              style: sanFranciscoMedium.copyWith(
                                color: AppColors.textGrey,
                              ),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(AppPaddings.outerPadding),
                        itemCount: recentChats.length,
                        itemBuilder: (context, index) {
                          final chat = recentChats[index];
                          return ConversationCard(
                            name: chat['name'] as String,
                            avatar: chat['avatar'] as String,
                            lastMessage: chat['lastMessage'] as String,
                            timestamp: chat['timestamp'] as String,
                            unreadCount: chat['unread'] as int,
                            onTap: () {},
                          );
                        },
                      )
                : ListView.builder(
                    padding: const EdgeInsets.all(AppPaddings.outerPadding),
                    itemCount: helpTopics.length,
                    itemBuilder: (context, index) {
                      final topic = helpTopics[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: AppColors.primaryGreen.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              topic['icon'] as IconData,
                              color: AppColors.primaryGreen,
                              size: 24,
                            ),
                          ),
                          title: Text(
                            topic['title'] as String,
                            style: sanFranciscoSemiBold.copyWith(fontSize: 16),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              topic['description'] as String,
                              style: sanFranciscoRegular.copyWith(
                                fontSize: 14,
                                color: AppColors.textGrey,
                              ),
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: AppColors.textGrey,
                          ),
                          onTap: () {},
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: selectedTabIndex.value == 0
          ? FloatingActionButton(
              backgroundColor: AppColors.primaryGreen,
              child: const Icon(Icons.chat),
              onPressed: () {},
            )
          : null,
    );
  }
}