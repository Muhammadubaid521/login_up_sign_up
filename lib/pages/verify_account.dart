import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  var pinController = TextEditingController();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.y7    q,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 62, horizontal: 20),
                child: Container(
                  color: const Color(0xff30449E),
                  height: 183.h,
                  width: 335.w,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Hello, There",
                        style: TextStyle(fontSize: 14.sp, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Wellcome Back",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      FlutterSwitch(
                        activeText: "login",
                        inactiveText: "Regisrter",
                        value: isSwitched,
                        valueFontSize: 16.0,
                        width: 200, //actuall width=295
                        height: 46,
                        borderRadius: 30.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            isSwitched = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 532,
                width:
                    375, //actual height=532                width: 355, // actual width=375
                color: const Color(0xffffffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 48.h,
                    ),
                    AppBar(
                      title: const Text('verify your account'),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    // Row(
                    //   children: [
                    //     IconButton(
                    //       onPressed: () {},
                    //       color: Colors.black, //<-- SEE HERE
                    //       iconSize: 30,
                    //       icon: const Icon(
                    //         Icons.arrow_back,
                    //       ),
                    //     ),
                    //     const Text(
                    //       'verify your account',
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.w700,
                    //       ),
                    //     ),
                    //   ],
                    // )
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: Image.asset('assets/images/fr.png'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 16.h),
                        const Text('Kebo Kanaeru'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 6.h,
                        ),
                        const Text('kebokannaeru@mail.com'),
                      ],
                    ),

                    SizedBox(
                      height: 80.h,
                    ),
                    SizedBox(
                      width: 335.0,
                      height: 52.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                                side: const BorderSide(color: Colors.blue)),
                          ),
                        ),
                        child: const Text(
                          'Verify',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
