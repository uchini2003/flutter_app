import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'explore_notifier.dart';
import 'explore_state.dart';

final exploreStateProvider = StateNotifierProvider<ExploreStateNotifier, ExploreState>(
  (ref) => ExploreStateNotifier(),
);