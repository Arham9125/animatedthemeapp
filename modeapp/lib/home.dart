import 'package:ecommerceapp/myget.dart';
import 'package:ecommerceapp/neub.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Container(
          height: double.infinity,
          width: double.infinity,
          color: controller.isExpanded.value ? Colors.grey[300] : Colors.grey[900],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  AnimatedContainer(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      color: controller.isExpanded.value ? Colors.orange : Colors.blueGrey[400],
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    child: Center(
                      child: Text(
                        controller.isExpanded.value ? "☀️" : "🌙",
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  controller.isExpanded.value
                      ? Text.rich(TextSpan(children: [
                          TextSpan(
                            text: " Good\n",
                            style: GoogleFonts.actor(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 50,
                            ),
                          ),
                          TextSpan(
                            text: "Morning",
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 50,
                            ),
                          ),
                        ]))
                      : Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Good\n",
                            style: GoogleFonts.actor(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 50,
                            ),
                          ),
                          TextSpan(
                            text: "Night",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 50,
                            ),
                          ),
                        ])),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      controller.mytheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Nbutton(), // Replace with your custom button widget
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}