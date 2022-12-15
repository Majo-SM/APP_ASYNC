import 'package:app_async_a/service/mockapi.dart';
import 'package:app_async_a/widgets/boton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'APP ASYNC SANTANA MARÍA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            AwaitButton(
              duration: 1,
              img:
                  'https://icones.pro/wp-content/uploads/2022/07/symbole-d-eclair-noir.png',
              fun: MockApi().getFerrariInteger,
              color: Colors.red,
            ),
            AwaitButton(
              duration: 3,
              img:
                  'https://cdn.icon-icons.com/icons2/933/PNG/96/front-bus_icon-icons.com_72746.png',
              fun: MockApi().getHyundaiInteger,
            ),
            AwaitButton(
              duration: 10,
              img:
                  'https://cdn.icon-icons.com/icons2/1562/PNG/96/3406421-animal-lazy-mammal-sloth-slow-wildlife-zoo_107592.png',
              fun: MockApi().getFisherPriceInteger,
              color: Colors.green,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
