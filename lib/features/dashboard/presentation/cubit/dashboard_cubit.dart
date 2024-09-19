import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<int> {
  DashboardCubit() : super(2);

  void switchIndex(index) {
    emit(index);
  }
}
