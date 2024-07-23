import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/screens/upcomingforecast.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});
  void _navigatetonextscreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SevenDays()));
  }

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding:  EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0, -0.5),
                child: Container(
                  height: 100.h,
                  width: 200.w,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    //shape: BoxShape.circle
                  ),
                ),
              ),

              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0,sigmaY: 100.0),
                child:Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent
                  ),
                ) ,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/Weather/file.png",scale: 8.5.r,),
                      Text("Minsk",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  //UPDATING
                  Container(
                    height: 25.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: const Border(
                        left: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                        right: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                        top: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                        bottom: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Container(
                          width: 5.0.w,
                          height: 7.0.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellowAccent
                          ),
                        ),
                         const SizedBox(
                           width: 10,
                         ),
                         Text("Updating",style: TextStyle(color: Colors.white,fontSize: 12.5.sp),)
                      ],
                    ),
                  ),
                  Flexible(child: Image.asset("assets/Weather/rainy.png",scale: 1.0.r,)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("23",style: TextStyle(color: Colors.white,fontSize: 70.sp,fontWeight: FontWeight.w800),),
                      Text("°",style: TextStyle(color: Colors.grey,fontSize: 40.sp,fontWeight: FontWeight.w900),),
                    ],
                  ),
                  Text("Thunderclouds",style: TextStyle(color: Colors.grey,fontSize: 20.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 10.h,),
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
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Today",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                      TextButton(
                          onPressed: (){ _navigatetonextscreen(context);},
                          child: Text("7 Days >",style: TextStyle(color: Colors.white,fontSize: 17.5.sp,fontWeight: FontWeight.bold),))
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 95.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white10,
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(
                                    20, 20, 20, 20),
                                child: Text("22°C",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight
                                          .bold),),
                              ),
                              SizedBox(height: 6.h,),
                              Image.asset(
                                'assets/Weather/thunder.png',
                                scale: 9.r,),
                              SizedBox(height: 10.h,),
                              const Text(
                                "11:00", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Container(
                          width:95.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white10,
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(
                                    20, 20, 20, 20),
                                child: Text("21 °C",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight
                                          .bold),),),
                              SizedBox(height: 6.h,),
                              Image.asset(
                                'assets/Weather/thunder.png',
                                scale: 9.r,),
                              SizedBox(height: 10.h,),
                              const Text(
                                "12:00", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Container(
                          width: 95.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white10,
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(
                                    20, 20, 20, 20),
                                child: Text("20 °C",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight
                                          .bold),),
                              ),
                              SizedBox(height: 6.h,),
                              Image.asset(
                                'assets/Weather/thunder.png',
                                scale: 9.r,),
                              SizedBox(height: 10.h,),
                              const Text(
                                "13:00", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),)

                            ],
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Container(
                          width: 95.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white10,
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(
                                    20, 20, 20, 20),
                                child: Text("21 °C",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight
                                          .bold),),),
                              SizedBox(height: 6.h,),
                              Image.asset(
                                'assets/Weather/thunder.png',
                                scale: 9.r,),
                              SizedBox(height: 10.h,),
                              const Text(
                                "14:00", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Container(
                          width: 95.w,
                          height: 120.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white10,
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(
                                    20, 20, 20, 20),
                                child: Text("21 °C",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight
                                          .bold),),),
                              SizedBox(height: 6.h,),
                              Image.asset(
                                'assets/Weather/thunder.png',
                                scale: 9.r,),
                              SizedBox(height: 10.h,),
                              const Text(
                                "15:00", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

