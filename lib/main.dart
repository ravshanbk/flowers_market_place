import 'package:flowers_e_shop/providers/add_product_provider.dart';
import 'package:flowers_e_shop/providers/body-page_provider.dart';
import 'package:flowers_e_shop/providers/considering_page_provider.dart';
import 'package:flowers_e_shop/providers/list_of_adds_provider.dart';
import 'package:flowers_e_shop/ui/add_product_page.dart';
import 'package:flowers_e_shop/ui/body_page.dart';
import 'package:flowers_e_shop/ui/considering_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AddProductProvider(),
        ),
         ChangeNotifierProvider(
          create: (_) =>BodyProvider(),
        ),
         ChangeNotifierProvider(
          create: (_) => ListOfAddsProvider(),
        ),
         ChangeNotifierProvider(
          create: (_) => ConsideringProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flowers_Market_Place',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ), 
      home:const BodyPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = 'Lobar';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      name = 'LOBAR';
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      name = "Sevinch";
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: 30,
                  color: name == 'LOBAR' ? Colors.red : Colors.blue,
                ),
              ),
              Container(
                  height: 580,
                  width: 300,
                  color: name == "LOBAR" ? Colors.pink : Colors.black,
                  child: const Image(
                    image: AssetImage('assets/images/Screenshot(2).png'),
                    fit: BoxFit.fill,
                  )),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 50,
              child: TextButton(
                child: const Text(
                  "Lobar",
                  style: TextStyle(color: Colors.yellowAccent, fontSize: 22),
                ),
                onPressed: _incrementCounter,
              ),
            ),
            CircleAvatar(
              radius: 50,
              child: TextButton(
                child: const Text(
                  "Sevinch",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                onPressed: _decrementCounter,
              ),
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
