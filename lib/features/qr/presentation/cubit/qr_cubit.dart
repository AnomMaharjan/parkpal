import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';

part 'qr_state.dart';
part 'qr_cubit.freezed.dart';

class QrCubit extends Cubit<QrState> {
  QrCubit() : super(const QrState());

  QRViewController? controller;
  Barcode? result;

  final TextEditingController vehicleRegistrationController =
      TextEditingController();

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      emit(state.copyWith(result: scanData));
    });
  }
}
