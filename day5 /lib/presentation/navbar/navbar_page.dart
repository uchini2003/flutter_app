import 'package:auto_route/auto_route.dart';
import 'package:day5/application/cart/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/values/colors.dart';
import '../routes/app_router.gr.dart';

@RoutePage()
class NavBarPage extends HookConsumerWidget {
  const NavBarPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color getTabColor(int index, int activeIndex) {
      if (index == activeIndex) {
        return AppColors.primaryGreen;
      } else {
        return AppColors.dashboardTextGrey;
      }
    }

    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        ExploreRoute(),
        PurchasesRoute(),
        ChatRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: SafeArea(child: child),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(251, 0, 25, 31),
            enableFeedback: false,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 44.w,
                  height: 36,
                  child: Icon(
                    Icons.explore,
                    color: getTabColor(0, tabsRouter.activeIndex),
                  ),
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 44.w,
                  height: 36,
                  child: Stack(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: getTabColor(1, tabsRouter.activeIndex),
                      ),
                      Consumer(
                        builder: (context, ref, _) {
                          final itemCount = ref.watch(
                            cartStateProvider.select((state) => state.items.size),
                          );
                          if (itemCount > 0) {
                            return Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                constraints: const BoxConstraints(
                                  minWidth: 12,
                                  minHeight: 12,
                                ),
                                child: Text(
                                  itemCount.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                      )
                    ],
                  ),
                ),
                label: 'Purchases',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 44.w,
                  height: 36,
                  child: Icon(
                    Icons.chat,
                    color: getTabColor(2, tabsRouter.activeIndex),
                  ),
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 44.w,
                  height: 36,
                  child: Icon(
                    Icons.account_circle,
                    color: getTabColor(3, tabsRouter.activeIndex),
                  ),
                ),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}