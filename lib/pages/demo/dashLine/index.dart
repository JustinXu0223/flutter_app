import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// constants
import 'package:flutter_app/constants/color.dart';
// components
import 'package:flutter_app/components/dashLine/index.dart';

class DashLinePage extends StatefulWidget {
  const DashLinePage({Key? key}) : super(key: key);

  @override
  DashLinePageState createState() => DashLinePageState();
}

class DashLinePageState extends State<DashLinePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true; // 保持应用状态

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light, // 修改状态栏字体颜色
      child: Scaffold(
        appBar: AppBar(
          title: const Text('虚线'),
          automaticallyImplyLeading: false,
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
      ),
    );
  }
}
