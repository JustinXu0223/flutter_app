import 'package:flutter/material.dart';
// constants
import 'package:flutter_app/constants/color.dart';
// pages
import 'package:flutter_app/pages/demo/dashLine/index.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  RoutePageState createState() => RoutePageState();
}

class RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('自定义路由动画'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1000,
          color: ColorConstant.strongColor.withOpacity(0.3),
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashLinePage(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: ColorConstant.primaryColor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '去虚线',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
