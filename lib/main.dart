import 'package:crypto/UI/navigator.dart';
import 'package:crypto/common/colors.dart';
import 'package:crypto/providers/coin_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: CoinProvider())],
      child: MaterialApp(
          title: 'Crypto',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: AppBarTheme(
                  systemOverlayStyle:
                      SystemUiOverlayStyle(statusBarColor: Colors.grey[200]),
                  elevation: 0,
                  backgroundColor: Colors.grey[200]),
              primaryColor: customPrimaryColor,
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                  selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500))),
          home: const RootNavigator()),
    );
  }
}
