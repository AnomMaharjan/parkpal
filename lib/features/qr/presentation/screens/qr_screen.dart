import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/constants/icons_manager.dart';
import 'package:parkpal/core/utils/padding_extension.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/core/widgets/custom_app_bar.dart';
import 'package:parkpal/core/widgets/custom_button.dart';
import 'package:parkpal/features/qr/presentation/cubit/qr_cubit.dart';
import 'package:parkpal/features/qr/presentation/screens/create_qr_screen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryYellowColor,
      appBar: CustomAppBar(
        appBarColor: AppColors.primaryYellowColor,
        title: "Scan",
      ),
      body: BlocConsumer<QrCubit, QrState>(
        builder: (context, state) {
          final qrCubit = context.read<QrCubit>();

          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: QRView(
                    key: qrKey,
                    onQRViewCreated: qrCubit.onQRViewCreated,
                    overlay: QrScannerOverlayShape(
                        cutOutSize: MediaQuery.of(context).size.width * 0.6,
                        overlayColor: Colors.white,
                        borderColor: Colors.black),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Column(
                      children: [
                        const Text("My Qr Codes").largeText(),
                        SizedBoxExtension.withHeight(16.h),
                        Container(
                          width: 200.w,
                          height: 200.h,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(24)),
                          child: Center(
                            child: SizedBox(
                              height: 150.h,
                              width: 150.w,
                              child: Image.asset(IconsManager.qrCode),
                            ),
                          ),
                        )
                      ],
                    ),
                    // child: (state.result != null)
                    //     ? Text(
                    //         'Barcode Type: ${describeEnum(state.result!.format)}   Data: ${state.result!.code}')
                    //     : const Text('Scan a code'),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Center(
                      child: CustomButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const CreateQrScreen()));
                        },
                        text: const Text("Create new QR").mediumText(),
                        width: MediaQuery.of(context).size.width * 0.7.w,
                      ),
                    ))
              ],
            ),
          );
        },
        listener: (BuildContext context, QrState state) {},
      ),
    );
  }
}
