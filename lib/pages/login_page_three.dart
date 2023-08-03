import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'verify_account.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isSwitched = false;

  bool? check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
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
                        "Hello, There,khattak",
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
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 520, //actual height=532
                width: 355, // actual width=375
                color: const Color(0xffffffff),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      const Text(
                        'Create Your Account',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff090D20),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        'Make sure your account keep secure',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff9EA1AE),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff090D20),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      TextField(
                        // obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              // color: Color(0xff9EA1AE),
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              // color: Color(0xff9EA1AE),
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          hintText: "Enter your name",
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                          filled: true,
                          fillColor: const Color(0xffF3F4F9),
                          // fillColor: const Color(0xffffffff),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 16.w),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff090D20),
                        ),
                      ),
                      TextField(
                        // obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              // color: Color(0xff9EA1AE),
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              // color: Color(0xff9EA1AE),
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                          filled: true,
                          fillColor: const Color(0xffF3F4F9),
                          // fillColor: const Color(0xffffffff),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 16.w),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff090D20),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextField(
                        // obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              // color: Color(0xff9EA1AE),
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              // color: Color(0xff9EA1AE),
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28.r),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 335,
                            ),
                          ),
                          hintText: "Enter your password",
                          hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                          filled: true,
                          fillColor: const Color(0xffF3F4F9),
                          // fillColor: const Color(0xffffffff),
                          suffixIcon: const Icon(
                            Icons.visibility_off,
                            color: Color(0xff9EA1AE),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.h, horizontal: 16.w),
                        ),
                      ),
                      SizedBox(
                        height: 31.h,
                      ),
                      CheckboxListTile(
                        value: check3,
                        controlAffinity:
                            ListTileControlAffinity.leading, //checkbox at left
                        onChanged: (bool? value) {
                          setState(() {
                            check3 = value;
                          });
                        },
                        title: const Text(
                          "I agree with the terms and conditions by creating an account",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 10.h, //actuall height 118;
                      ),
                      SizedBox(
                        width: 335.0,
                        height: 52.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: const BorderSide(color: Colors.blue)),
                            ),
                          ),
                          child: const Text('Create Account'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const VerifyAccount(),
                                ));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(
                        color: Colors.black,
                        height: 5, //height spacing of divider
                        thickness: 3, //thickness of divier line
                        indent: 50, //spacing at the start of divider
                        endIndent: 50,
                        //spacing at the end of divider
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
