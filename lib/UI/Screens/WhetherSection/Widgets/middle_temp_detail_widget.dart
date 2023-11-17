import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:intl/intl.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'package:whetherapp/Infrastructure/Constant/image_constant.dart';
import 'package:whetherapp/Infrastructure/Models/date_wise_whether_model.dart';
import 'package:whetherapp/UI/Screens/homeSection/home_controller.dart';

class MiddleTempDetail extends StatelessWidget {
  const MiddleTempDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Column(
          children: [
            SizedBox(
              height: 38,
              child: ListView.builder(
                itemCount: dataModel.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      for (var element in dataModel) {
                        if(element.isSelected){
                          element.isSelected=false;

                        }
                      }
                      controller.update();
                      dataModel[index].isSelected=true;
                      controller.update();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration:     dataModel[index].isSelected?BoxDecoration(
                        color: ColorConstants.blue.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(50),
                      ):null,
                      child:  Text(
                       dataModel[index].isSelected? DateFormat('EEEE, dd MMM yyyy').format(dataModel[index].date):DateFormat('dd MMM').format(dataModel[index].date),
                        style:  TextStyle(
                            fontWeight: FontWeight.w400,
                            color:     dataModel[index].isSelected?ColorConstants.blue: ThemeColors.secondaryText(context),
                            letterSpacing: 0.5,
                            fontSize: 14),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: dataModel.where((element) => element.isSelected).toList().first.whetherData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  WhetherData data = dataModel.where((element) => element.isSelected).toList().first.whetherData[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color:data.color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                           DateFormat('hh:mm a').format(data.time),
                          textAlign: TextAlign.start,
                          style: const TextStyle(fontWeight: FontWeight.w400, color: ColorConstants.white, letterSpacing: 0.5, fontSize: 16),
                        ),
                        Image.asset(
                          data.image,
                          height: 30,
                          width: 30,
                        ),
                         Text(
                          "${data.temp}° C",
                          textAlign: TextAlign.start,
                          style: const TextStyle(fontWeight: FontWeight.w400, color: ColorConstants.white, letterSpacing: 0.5, fontSize: 16),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }
    );
  }
}
