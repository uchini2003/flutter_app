import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/core/authentication_failure.dart';
import '../../../domain/core/failure.dart';
import '../../../domain/core/network_failure.dart';
import '../../../utils/log_utils.dart';
import 'failure_state.dart';

class FailureStateNotifier extends StateNotifier<FailureState> {
  FailureStateNotifier() : super(FailureState.initial()) {
    {
      _logUtils.log("init");
    }
  }