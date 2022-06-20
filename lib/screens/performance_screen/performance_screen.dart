import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../constants/constant.dart';
import 'componant/chart_activity_status.dart';
import 'componant/chart_workout_progress.dart';
import 'data/latest_workout.dart';


class PerformanceScreen extends StatefulWidget {
  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
    @override
    Widget build(BuildContext context) {
      // List<_SalesData> data = [
      //   _SalesData('Jan', 35),
      //   _SalesData('Feb', 11),
      //   _SalesData('Mar', 34),
      //   _SalesData('Apr', 32),
      //   _SalesData('May', 40)
      // ];

      return Scaffold(
        backgroundColor: K.whiteColor.withOpacity(.97),
        // appBar: AppBar(backgroundColor: K.mainColor,
        //   title:   Text('المؤشر العام'),
        // ),
        body:getBody()


        // Column(children:   [
        //      SfCartesianChart(
        //         primaryXAxis: CategoryAxis(),
        //          title: ChartTitle(text: 'Half yearly sales analysis'),
        //          legend: Legend(isVisible: true),
        //          tooltipBehavior: TooltipBehavior(enable: true),
        //         series: <ChartSeries<_SalesData, String>>[
        //           LineSeries<_SalesData, String>(
        //               dataSource: data,
        //               xValueMapper: (_SalesData sales, _) => sales.year,
        //               yValueMapper: (_SalesData sales, _) => sales.sales,
        //               name: 'Sales',
        //               // Enable data label
        //               dataLabelSettings: DataLabelSettings(isVisible: true))
        //         ]),
        //   ListView.builder(
        //     itemCount: 6,
        //     itemBuilder: (context,index){
        //       return Card(
        //         child: Column(
        //           children: [
        //
        //           ],
        //         ),
        //       );
        //     })
        //   ],),);
      );
    }

    Widget getBody() {
      var size = MediaQuery.of(context).size;
      return SingleChildScrollView(
        child: SafeArea(
          child: Directionality(
            
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "المؤشر العام",
                            style: TextStyle(fontSize: 14, color: K.blackTypingColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "الاداء الحالي لإجمالي المهام",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.03),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child:   Icon(FontAwesomeIcons.bell),

                          ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [K.mainColor,K.secondaryColor]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              width: (size.width),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "  إجمالي عدد المهام",
                                    style: TextStyle(
                                        fontSize: 14,
                                         color: K.whiteColor),
                                  ),
                                  Container(
                                    width: 95,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        gradient:   LinearGradient(
                                            colors: [K.secondaryColor, K.buttonColor]),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: const Center(
                                      child: Text(
                                        "المزيد ",
                                        style:
                                        TextStyle(fontSize: 13, color: K.whiteColor),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient:
                              LinearGradient(colors: [K.secondaryColor,
                              K.firstColorSecButton,
                              // K.secColorSecButton

                              ]),
                            ),
                            child: const Center(
                              child: Text(
                                "299 +",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: K.whiteColor
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: K.secondaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "المهام المنجزه",
                            style: TextStyle(
                                fontSize: 17,),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, "/today_target_detail");
                            },
                            child: Container(
                              width: 70,
                              height: 35,
                              decoration: BoxDecoration(
                                  gradient:
                                  LinearGradient(colors: [K.mainColor, K.secondaryColor]),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  "Check",
                                  style: TextStyle(fontSize: 13, color: K.whiteColor),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "مؤشر الآداء",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, color: K.blackTypingColor),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        color: K.secondaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          child: LineChart(activityData()),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "المؤشر العام للفتره الحاليه",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal,fontFamily: 'Arabic'),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Row(
                  //   children: [
                  //     Container(
                  //       width: (size.width - 80) / 2,
                  //       height: 320,
                  //       decoration: BoxDecoration(
                  //           color: K.whiteColor,
                  //           boxShadow: [
                  //             BoxShadow(
                  //                 color: K.blackTypingColor.withOpacity(0.01),
                  //                 spreadRadius: 20,
                  //                 blurRadius: 10,
                  //                 offset: Offset(0, 10))
                  //           ],
                  //           borderRadius: BorderRadius.circular(30)),
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(20),
                  //         child: Row(
                  //           children: [
                  //             WateIntakeProgressBar(),
                  //             const SizedBox(
                  //               width: 15,
                  //             ),
                  //             Flexible(
                  //               child: Column(
                  //                 children: [
                  //                   const Text(
                  //                     "Water Intake",
                  //                     style: TextStyle(
                  //                         fontSize: 15,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   Spacer(),
                  //                   Column(
                  //                     children: [
                  //                       Text(
                  //                         "Real time updates",
                  //                         style: TextStyle(
                  //                             fontSize: 13,
                  //                             color: K.blackTypingColor.withOpacity(0.5)),
                  //                       ),
                  //                       SizedBox(
                  //                         height: 15,
                  //                       ),
                  //                       WaterIntakeTimeLine()
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //     Column(
                  //       children: [
                  //         Container(
                  //           width: (size.width - 80) / 2,
                  //           height: 150,
                  //           decoration: BoxDecoration(
                  //               color:  K.whiteColor,
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                     color:  K.blackTypingColor.withOpacity(0.01),
                  //                     spreadRadius: 20,
                  //                     blurRadius: 10,
                  //                     offset: Offset(0, 10))
                  //               ],
                  //               borderRadius: BorderRadius.circular(30)),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(20),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 const Text(
                  //                   "Sleep",
                  //                   style: TextStyle(
                  //                       fontSize: 15, fontWeight: FontWeight.bold),
                  //                 ),
                  //                 Spacer(),
                  //                 Flexible(
                  //                   child: LineChart(sleepData()),
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 20,
                  //         ),
                  //         Container(
                  //             width: (size.width - 80) / 2,
                  //             height: 150,
                  //             decoration: BoxDecoration(
                  //                 color:  K.whiteColor,
                  //                 boxShadow: [
                  //                   BoxShadow(
                  //                       color:  K.blackTypingColor.withOpacity(0.01),
                  //                       spreadRadius: 20,
                  //                       blurRadius: 10,
                  //                       offset: Offset(0, 10))
                  //                 ],
                  //                 borderRadius: BorderRadius.circular(30)),
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(20),
                  //               child: Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   const Text(
                  //                     "Calories",
                  //                     style: TextStyle(
                  //                         fontSize: 15,
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                   Spacer(),
                  //                   Container(
                  //                     width: 70,
                  //                     height: 70,
                  //                     decoration: BoxDecoration(
                  //                         gradient: LinearGradient(
                  //                             begin: Alignment.topCenter,
                  //                             colors: [
                  //                               K.secColorSecButton,
                  //                               K.secondaryColor.withOpacity(0.5)
                  //                             ]),
                  //                         shape: BoxShape.circle),
                  //                     child: Center(
                  //                         child: Container(
                  //                           width: 50,
                  //                           height: 50,
                  //                           decoration: const BoxDecoration(
                  //                               shape: BoxShape.circle, color: K.secondaryColor),
                  //                           child: const Center(
                  //                             child: Text(
                  //                               "230 Cal",
                  //                               style: TextStyle(
                  //                                   fontSize: 10, color:  K.whiteColor),
                  //                             ),
                  //                           ),
                  //                         )),
                  //                   )
                  //                 ],
                  //               ),
                  //             ))
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "المهام ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: K.blackTypingColor,
                        ),
                      ),
                      Text(
                        "المزيد",
                        style: TextStyle(fontSize: 15, color: K.blackTypingColor.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: List.generate(latestWorkoutJson.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: K.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    color: K.blackTypingColor.withOpacity(0.01),
                                    spreadRadius: 20,
                                    blurRadius: 10,
                                    offset:Offset(0, 10)
                                )
                              ],
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(latestWorkoutJson[index]['img']))
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Flexible(
                                  child: Container(
                                    height: 55,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(latestWorkoutJson[index]['title'],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight:FontWeight.bold
                                        ),),
                                        Text(latestWorkoutJson[index]['description'],
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: K.blackTypingColor.withOpacity(0.5)
                                        ),),
                                        Stack(
                                            children:[
                                              Container(
                                                width: size.width,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(30),
                                                    color: K.whiteColor
                                                ),
                                              ),
                                              Container(
                                                width: size.width*(latestWorkoutJson[index]['progressBar']),
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(30),
                                                    gradient:   LinearGradient(
                                                        colors:latestWorkoutJson[index]['LinearGradientColors']
                                                        // colors:[K.secColorFirstButton, K.firstColorFirstButton]
                                                    )
                                                ),
                                              )
                                            ]
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: K.blackTypingColor
                                      )
                                  ),
                                  child:   Center(
                                    child: latestWorkoutJson[index]['icon'],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        " Revenue Progress",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color:  K.blackTypingColor),
                      ),
                      Container(
                        width: 95,
                        height: 35,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [ K.mainColor, K.secondaryColor,]),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Weekly",
                              style: TextStyle(fontSize: 13, color: K.whiteColor,),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: K.whiteColor,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                        color: K.whiteColor,
                        boxShadow: [
                          BoxShadow(
                              color: K.blackTypingColor.withOpacity(0.01),
                              spreadRadius: 20,
                              blurRadius: 10,
                              offset: Offset(0, 10))
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    child: LineChart(
                      workoutProgressData(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                ],
              ),
            ),
          ),
        ),
      );
    }
}

   class _SalesData {
  _SalesData(this.year, this.sales);
  final String year;
  final double sales;
}