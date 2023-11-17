import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'package:whetherapp/UI/Screens/WhetherSection/Widgets/middle_temp_detail_widget.dart';
import 'package:whetherapp/UI/Screens/WhetherSection/Widgets/top_detail_widget.dart';
import 'package:whetherapp/UI/Screens/homeSection/home_controller.dart';
import 'Widgets/add_info_detail_widget.dart';
import 'whether_controller.dart';

class WhetherScreen extends GetView<WhetherController> {
  const WhetherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
            backgroundColor: ThemeColors.primaryText(context),
            body: SafeArea(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child:  !controller.progress.value && controller.temperatureModel.current!=null?
                SingleChildScrollView(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const TopDetailWidget() ,
                      const SizedBox(height: 20),
                      const MiddleTempDetail(),
                      const SizedBox(height: 40),
                     AddInfoDetail()
                    ],
                  ),
                ): Center(child: CircularProgressIndicator(color: ThemeColors.primarySurface(context))),
              ),
            ));
      },
    ));
  }
}
