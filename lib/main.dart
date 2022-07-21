import 'package:flutter/material.dart';
import 'package:protork_motorista/view/login_view.dart';
import 'package:protork_motorista/view_model/login_provider.dart';
import 'package:provider/provider.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => LoginProvider())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(brightness: Brightness.light),
          home: SplashScreenView(
            imageSrc: 'assets/images/LOGOPROTORK.png',
            navigateRoute: const LoginView(),
          ),
        ));
  }
}
