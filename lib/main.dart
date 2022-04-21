import 'package:api/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      //multi provider i.e we can user multiple provider for single we can use
      MultiProvider(
        providers: [
          ChangeNotifierProvider<WeatherProvider>(
            create: (_) => WeatherProvider(),
          ),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    final list = Provider.of<WeatherProvider>(context, listen: false);
    list.fetchProviderData();
  }

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<WeatherProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            list.weatherData.location.toString(),
          ),
        ),
      ),
    );
  }
}
