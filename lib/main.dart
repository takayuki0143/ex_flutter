import 'package:ex_flutter/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:webview_flutter/webview_flutter.dart';

Future<void> main() async { // main関数をFutureに変更
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env'); // .envファイルを読み込み
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oiita Search',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Hirago Sans',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF55C500),
        ),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
        ),
      ),
      home: const SearchScreen(),
    );
  }
}