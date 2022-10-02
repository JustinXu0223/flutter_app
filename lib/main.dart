import 'package:flutter/material.dart';
// constants
import 'package:flutter_app/constants/color.dart';
// components
import 'package:flutter_app/components/pageRoute/fadePageRoute/index.dart';
import 'package:flutter_app/components/pageRoute/rippleRoute/index.dart';
// pages
import 'package:flutter_app/pages/demo/dashLine/index.dart';
import 'package:flutter_app/pages/demo/pageRoute/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget renderLinkItem(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      width: 200,
      decoration: BoxDecoration(
        color: ColorConstant.primaryColor.withOpacity(0.3),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1000,
          color: ColorConstant.negativeColor.withOpacity(0.3),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10),
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                  color: ColorConstant.primaryColor,
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashLinePage(),
                    ),
                  );
                },
                child: renderLinkItem('去虚线'),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    FadePageRoute(
                      builder: (context) => const RoutePage(),
                    ),
                  );
                },
                child: renderLinkItem('渐变自定义路由'),
              ),
              Builder(builder: (_) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      RippleRoute(
                        builder: (context) => const RoutePage(),
                        routeConfig: RouteConfig.fromContext(_),
                      ),
                    );
                  },
                  child: renderLinkItem('点击自定义路由'),
                );
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
