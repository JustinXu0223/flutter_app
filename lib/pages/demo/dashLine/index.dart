import 'package:flutter/material.dart';
// constants
import 'package:flutter_app/constants/color.dart';
// components
import 'package:flutter_app/components/dashLine/index.dart';

class DashLinePage extends StatefulWidget {
  const DashLinePage({Key? key}) : super(key: key);

  @override
  DashLinePageState createState() => DashLinePageState();
}

class DashLinePageState extends State<DashLinePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('虚线'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 62,
          color: Colors.red.withOpacity(0.3),
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: DashLine(
            color: ColorConstant.strongColor,
          ),
        ),
      ),
    );
  }
}
