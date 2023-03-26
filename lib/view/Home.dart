import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tk_designs_evaluation/utils/contstants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<ChartData> chartData = [
    ChartData(24, 1500),
    ChartData(25, 5000),
    ChartData(26, 3000),
    ChartData(27, 6500),
    ChartData(28, 4000),
    ChartData(29, 7000),
    ChartData(30, 5000)


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle ,
                          border: Border.all(width: 2, color: appColor1),
                        ),
                        child: const CircleAvatar(
                         backgroundImage: AssetImage('assetes/dp.PNG'),
                      ),
                      ),


                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Essa Afridi', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                          Text('View profile',style: TextStyle(fontSize: 12, color: Color(0xff737373)),)
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.47,
                      ),
                      Container(
                        height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: appColor2,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: const Color(0xffECECEC)
                            )
                          ),
                          child: const Icon(Icons.settings_outlined))
                    ],
                  ),
                ),

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 5.0),
                 child:  Container(
                   height: 350,
                   color: Colors.white,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 10.0),
                     child: Column(
                       children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text('Daily Revenue', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                            SizedBox(
                              width: 5,
                            ),
                            Text('(PKR)',  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
                          ],
                        ),
                         const SizedBox(
                           height: 5,
                         ),
                         SfCartesianChart(
                           backgroundColor: appColor2,
                           primaryYAxis: NumericAxis(

                               minimum: 0,
                               interval: 1000,
                               maximum: 10000
                           ),
                           primaryXAxis: NumericAxis(
                               majorGridLines: const MajorGridLines(width: 0),

                               minimum: 23,
                               interval: 1,
                               maximum: 31
                           ),
                           series: <ChartSeries<ChartData, int>>[
                             ColumnSeries<ChartData, int>(
                               color: const Color(0xffFAB73D),
                                 width: 0.4,
                                 borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                                 dataSource: chartData,
                                 xValueMapper: (ChartData data, _) => data.x,
                                 yValueMapper: (ChartData data, _) => data.y),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: const [
                         Text('Active Orders', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                         SizedBox(
                           width: 5,
                         ),
                         Text('(15)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
                       ],
                     ),
                     Row(
                       children: const [
                         Icon(Icons.add_circle_outlined, color: appColor1,),
                         SizedBox(
                           width: 5,
                         ),
                         Text('Add order', style: TextStyle(color: appColor1, fontSize: 16, fontWeight: FontWeight.w700))
                       ],
                     )
                   ],
                 ),
               ),




                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    reverse: true,
                    itemCount: 10,
                    itemBuilder: (context, index){
                        return InkWell(
                          onTap: () {},
                          child:   Card(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('Marvin McKinney', style: TextStyle(fontSize: 16, color: Color(0xffCA8405)
                                      ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: const [
                                          Icon(Icons.calendar_month_outlined,size: 12, color: Color(0xffA3A3A3),),
                                          Text('Due Date 28 march, 2023',  style: TextStyle(fontSize: 12, color: Color(0xffA3A3A3)
                                          ),
                                          )
                                        ],
                                      )

                                    ],
                                  ),
                                  const Icon(Icons.arrow_forward_ios_sharp)
                                ],
                              ),
                            ),
                          )
                        );

                    }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChartData{
  ChartData(this.x, this.y);
  final int x;
  final double y;
}
