import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sam/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(WidgetsBinding.instance!.window),
      child: ScreenUtilInit(
        designSize: const Size(384, 806),
        builder: () => GetMaterialApp(
          title: 'Sample',
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          theme: ThemeData(
            primarySwatch: Colors.green,
            textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
          ),
          initialRoute: "/",
          enableLog: true,
          getPages: [
            GetPage(
              name: "/",
              page: () => const HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
