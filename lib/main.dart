import 'package:e_learning_admin/admin_screens/admin_home/admin_home.dart';
import 'package:e_learning_admin/business_logic/app_cubit/app_cubit.dart';
import 'package:e_learning_admin/business_logic/app_cubit/app_states.dart';
import 'package:e_learning_admin/home_screen.dart';
import 'package:e_learning_admin/styles/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => AppCubit()),
      ],
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'M2M',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: ColorManager.white,
              appBarTheme: AppBarTheme(
                backgroundColor: ColorManager.white,
                elevation: 0.0,
                iconTheme: IconThemeData(
                  color: ColorManager.black,
                ),
                systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: Colors.white,
                ),
              ),
            ),
            home: const AdminHome(),

          );
        },
      ),
    );
  }
}

