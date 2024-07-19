import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

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
                      Image.asset("assets/Weather/file.png",scale: 7.r,),
                      Text("Minsk",style: TextStyle(color: Colors.white,fontSize: 30.sp,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  //UPDATING
                  Container(
                    height: 30.h,
                    width: 100.w,
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
                          width: 7.0.w,
                          height: 7.0.h,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellowAccent
                          ),
                        ),
                         const SizedBox(
                           width: 10,
                         ),
                         Text("Updating",style: TextStyle(color: Colors.white,fontSize: 15.sp),)
                      ],
                    ),
                  ),
                  Image.asset("assets/Weather/rainy.png",scale: 1.5.r,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("23",style: TextStyle(color: Colors.white,fontSize: 80.sp,fontWeight: FontWeight.w800),),
                      Text("°",style: TextStyle(color: Colors.grey,fontSize: 50.sp,fontWeight: FontWeight.w900),),
                    ],
                  ),
                  Text("Thunderclouds",style: TextStyle(color: Colors.grey,fontSize: 25.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 20.h,),
                  Container(
                    height: 75.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff1f2227),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                              Text("13 km/h",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                              Text("Wind",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.w400),)
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
                              Text("27 %",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                              Text("Humidity",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.w400),)
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
                              Text("87 %",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                              Text("Rain",style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.w400),)
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
                          onPressed: (){},
                          child: Text("7 Days >",style: TextStyle(color: Colors.white,fontSize: 17.5.sp,fontWeight: FontWeight.bold),))
                    ],
                  ),
                  ListView(

                  )

                ],
              ),

            ],
          )
        ),
      ),
    );
  }
}

