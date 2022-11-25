import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double getRemainingBudgetByDayInterval(
  double? remainingBudget,
  DateTime? endDate,
  int? dayInterval,
) {
  if (remainingBudget == null || endDate == null || dayInterval == null) {
    return 0;
  } else {
    int dayRemaining =
        math.max(endDate.difference(DateTime.now()).inDays, 0) + 1;
    return (remainingBudget /
        (dayRemaining.toDouble() / dayInterval.toDouble()).ceil());
  }
}

int getRemainingDays(DateTime? endDate) {
  if (endDate == null) {
    return 0;
  } else {
    int dayRemaining =
        math.max(endDate.difference(DateTime.now()).inDays, 0) + 1;
    return dayRemaining;
  }
}

double getDoubleSubstract(
  double? valueA,
  double? valueB,
) {
  if (valueA == null || valueB == null) {
    return 0;
  } else {
    return valueA - valueB;
  }
}

double getPercentageBarBudget(BudgetRecord? budget) {
  if (budget == null) {
    return 0;
  } else {
    int totalDays = budget.endDate!.difference(budget.startDate!).inDays;
    int remainingDays = budget.endDate!.difference(DateTime.now()).inDays;
    return (1 - (remainingDays.toDouble() / totalDays.toDouble()));
  }
}

double getDoubleSum(
  double? valueA,
  double? valueB,
) {
  if (valueA == null || valueB == null) {
    return 0;
  } else {
    return valueA + valueB;
  }
}
