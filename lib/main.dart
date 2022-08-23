import 'package:currency_news_app/constants/exports.dart';
import 'package:currency_news_app/constants/themes.dart';
import 'package:currency_news_app/pages/portfolio/portfolio_page.dart';


void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StoriesProvider()),
      ],
      child: const MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const PortfolioPage(),
    );
  }
}

