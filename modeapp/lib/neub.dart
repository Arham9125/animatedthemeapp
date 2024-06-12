import 'package:ecommerceapp/myget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nbutton extends StatelessWidget {
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          controller.mytheme();
        },
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: controller.isExpanded.value ? Colors.black : Colors.blueGrey[300],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                 color: controller.isExpanded.value ? Colors.grey.shade600 : Colors.black45,
                offset: Offset(5, 5),
                blurRadius: 10,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: controller.isExpanded.value ? Colors.grey.shade600 : Colors.black,
                offset: Offset(-5, -5),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                controller.isExpanded.value ? Colors.white : Colors.blueGrey.shade900,
                controller.isExpanded.value ? Colors.white70 : Colors.blueGrey.shade700,
              ],
            ),
          ),
          child: Icon(
            Icons.power_settings_new,
            color: controller.isExpanded.value ? Colors.blueGrey[700] : Colors.blueGrey.shade100,
          ),
        ),
      ),
    );
  }
}
