part of 'qr_cubit.dart';

@freezed
class QrState with _$QrState {
  const QrState._();

  const factory QrState({Barcode? result}) = _QrState;
}
