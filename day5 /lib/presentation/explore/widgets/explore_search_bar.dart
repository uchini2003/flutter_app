import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/explore/explore_provider.dart';
import '../../core/values/colors.dart';
import '../../core/values/text_styles.dart';

class ExploreSearchBar extends ConsumerWidget {
  const ExploreSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.containerWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.cardShadow,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) {
          ref.read(exploreStateProvider.notifier).searchQueryChanged(value);
        },
        decoration: InputDecoration(
          hintText: 'Search for products...',
          hintStyle: sanFranciscoRegular.copyWith(
            color: AppColors.textDarkerGrey,
            fontSize: 14,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.primaryGreen,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
        ),
      ),
    );
  }
}