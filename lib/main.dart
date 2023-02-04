import 'package:player_stats_23/screens/SetUpLocalDb.dart';
import 'package:player_stats_23/theme.dart';
import 'package:flutter/material.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:native_ads_example/native_ad_view_wrapper.dart';

void main() {
  //List<String> testDeviceIds = ['E25EE02DA7817F620865558627D4F3E0'];
  /* WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  MobileAds.instance.initialize(); */
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa 23 Stats',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeClass.darkTheme,
      theme: ThemeClass.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const SetUpLocalDb(),
    );
    /* return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screhile waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            title: 'Fifa Stats',
            themeMode: ThemeMode.dark,
            darkTheme: ThemeClass.darkTheme,
            theme: ThemeClass.lightTheme,
            debugShowCheckedModeBanner: false,
            home: SetUpLocalDb(),
          );
        }
      },
    ); */
  }
}
