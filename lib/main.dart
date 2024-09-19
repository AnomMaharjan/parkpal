import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkpal/features/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:parkpal/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:parkpal/features/home/presentation/cubit/home_cubit.dart';
import 'package:parkpal/features/qr/presentation/cubit/qr_cubit.dart';
import 'package:parkpal/features/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => DashboardCubit()),
    BlocProvider(create: (context) => QrCubit()),
    BlocProvider(create: (context) => HomeCubit())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // U
      child: MaterialApp(
        title: 'Parker',
        darkTheme: ThemeData.light(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            primaryColorDark: Colors.red,
            fontFamily: 'Space Grotesk'),
        home: const SplashScreen(),
      ),
    );
  }
}
