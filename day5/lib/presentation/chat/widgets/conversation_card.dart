import 'package:flutter/material.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class ConversationCard extends StatelessWidget {
  final String name;
  final String avatar;
  final String lastMessage;
  final String timestamp;
  final int unreadCount;
  final VoidCallback onTap;

  const ConversationCard({
    super.key,
    required this.name,
    required this.avatar,
    required this.lastMessage,
    required this.timestamp,
    required this.unreadCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(avatar),
              backgroundColor: Colors.grey[200],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: sanFranciscoSemiBold.copyWith(fontSize: 16),
                      ),
                      Text(
                        timestamp,
                        style: sanFranciscoRegular.copyWith(
                          fontSize: 12,
                          color: unreadCount > 0
                              ? AppColors.primaryGreen
                              : AppColors.textGrey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          lastMessage,
                          style: sanFranciscoRegular.copyWith(
                            fontSize: 14,
                            color: unreadCount > 0
                                ? Colors.black
                                : AppColors.textGrey,
                            fontWeight: unreadCount > 0
                                ? FontWeight.w500
                                : FontWeight.normal,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (unreadCount > 0) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: AppColors.primaryGreen,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            unreadCount.toString(),
                            style: sanFranciscoMedium.copyWith(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}