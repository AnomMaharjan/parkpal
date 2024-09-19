import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/core/constants/color_manager.dart';
import 'package:parkpal/core/utils/padding_extension.dart';
import 'package:parkpal/core/utils/text_extension.dart';
import 'package:parkpal/core/widgets/custom_app_bar.dart';
import 'package:parkpal/core/widgets/custom_button.dart';
import 'package:parkpal/features/qr/presentation/cubit/qr_cubit.dart';

import '../../../../core/widgets/custom_text_input_field.dart';

class CreateQrScreen extends StatelessWidget {
  const CreateQrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryYellowColor,
      appBar: CustomAppBar(
        appBarColor: AppColors.primaryYellowColor,
        title: "Create New QR",
        showBackButton: true,
      ),
      body: BlocBuilder<QrCubit, QrState>(builder: (context, state) {
        final cubit = context.read<QrCubit>();
        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              )),
          padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("Vehicle Details").largeText(),
                  SizedBoxExtension.withHeight(10.h),
                  TextInputField(
                      controller: cubit.vehicleRegistrationController,
                      hintText: "Vehicle Registration no."),
                  SizedBoxExtension.withHeight(16.h),
                  TextInputField(
                      controller: cubit.vehicleRegistrationController,
                      hintText: "Vehicle Owner info"),
                  SizedBoxExtension.withHeight(16.h),
                  TextInputField(
                      controller: cubit.vehicleRegistrationController,
                      hintText: "Vehicle Type"),
                  SizedBoxExtension.withHeight(16.h),
                  TextInputField(
                      controller: cubit.vehicleRegistrationController,
                      hintText: "Vehicle Color"),
                ],
              ),
              Center(
                child: CustomButton(
                  onPressed: () {},
                  text: const Text("Create").mediumText(),
                  width: MediaQuery.of(context).size.width * 0.7.w,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
