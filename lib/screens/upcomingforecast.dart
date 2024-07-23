import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SevenDays extends StatefulWidget {
  const SevenDays ({super.key});

  @override
  State<SevenDays> createState() => _NewScreenState();
}

class _NewScreenState extends State<SevenDays> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        //elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
        ),
        title: const Center(child:  Text("7 Days",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),
      ),
      body: Padding(
        padding:  EdgeInsets.fromLTRB(20.w,20.h,20..w,15.h),
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(-0.7, -0.95),
              child: Container(
                height: 85.h,
                width: 100.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
              ),
            ),
            BackdropFilter(filter: ImageFilter.blur(sigmaX: 100,sigmaY: 100),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.transparent
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //top row contains weather details
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.7, -0.95),
                      child: Image.asset("assets/Weather/rainy.png",scale: 3.5.r,),

                    ),

                    SizedBox(width: 20.w,),
                    // tomorrow temperature and weather condition
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Tomorrow",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10.h,),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            const Text("22",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                            SizedBox(width: 10.w),
                            const Text("/18°",style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),

                          ],
                        ),
                        SizedBox(height: 10.h,),
                        const Text("ThunderStorm",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30.h,),
                // wind humidity and wind
                Container(
                  height: 68.2.h,
                  width: 325.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff1f2227),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.fromLTRB(10.w, 8.h,10.w,8.h ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/Weather/winds.png",scale: 15.r,),
                            SizedBox(height: 5.h,),
                            Text("13 km/h",style: TextStyle(color: Colors.white,fontSize: 12.5.sp,fontWeight: FontWeight.bold),),
                            Text("Wind",style: TextStyle(color: Colors.grey,fontSize: 10.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/Weather/drops.png",scale: 15.r,),
                            SizedBox(height: 5.h,),
                            Text("27 %",style: TextStyle(color: Colors.white,fontSize: 12.5.sp,fontWeight: FontWeight.bold),),
                            Text("Humidity",style: TextStyle(color: Colors.grey,fontSize: 10.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/Weather/rainy.png",scale: 15.r,),
                            SizedBox(height: 5.h,),
                            Text("87 %",style: TextStyle(color: Colors.white,fontSize: 12.5.sp,fontWeight: FontWeight.bold),),
                            Text("Rain",style: TextStyle(color: Colors.grey,fontSize: 10.sp,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.h),

                Container(
                  height: 360.h,
                  width: 300.h,
                  decoration:const BoxDecoration(
                    color:Color(0xff0d0d0d),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                  ),
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Text("Mon",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/Weather/drizzle.png",scale: 10.r,),
                                SizedBox(width: 5.w,),
                                Text("Rainy",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            ),
                             Row(
                              children: [
                                Text("+20°",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                                SizedBox(width: 2.w,),
                                Text("+14°",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Tue",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                            Row(
                              children: [
                                Image.asset("assets/Weather/drizzle.png",scale: 10.r,),
                                SizedBox(width: 5.w,),
                                Text("Rainy",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("+22°",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                                SizedBox(width: 2.w,),
                                Text("+16°",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            )
                          ],
                        ),Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Wed",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                            Row(
                              children: [
                                Image.asset("assets/Weather/rainy.png",scale: 10.r,),
                                SizedBox(width: 5.w,),
                                Text("Storm",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("+19°",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                                SizedBox(width: 2.w,),
                                Text("+13°",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Thu",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                            Row(
                              children: [
                                Image.asset("assets/Weather/Clouds.png",scale: 10.r,),
                                SizedBox(width: 5.w,),
                                Text("Cloudy",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("+18°",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                                SizedBox(width: 2.w,),
                                Text("+12°",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Fri",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/Weather/thunder.png",scale: 10.r,),
                                SizedBox(width: 5.w,),
                                Text("Thunder",style: TextStyle(color: Colors.grey,fontSize: 12.5.sp,fontWeight: FontWeight.normal),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("+23°",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                                SizedBox(width: 2.w,),
                                Text("+19°",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Sat",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                            Row(
                              children: [
                                Image.asset("assets/Weather/drizzle.png",scale: 10.r,),
                                SizedBox(width: 5.w,),
                                Text("Rainy",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("+25°",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                                SizedBox(width: 2.w,),
                                Text("+19°",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Sun",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                            Row(
                              children: [
                                Image.asset("assets/Weather/rainy.png",scale: 10.r,),
                                SizedBox(width: 5.w,),
                                Text("Storm",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("+21°",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.normal),),
                                SizedBox(width: 2.w,),
                                Text("+18°",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.normal),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )



              ],
            )
          ],
        ),
      ),
    );
  }
}
