import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tap_invest/home.dart';

class AllDoneScreen extends StatefulWidget {
  const AllDoneScreen({super.key});

  @override
  State<AllDoneScreen> createState() => _AllDoneScreenState();
}

class _AllDoneScreenState extends State<AllDoneScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), navigateToNextScreen);
  }

  void navigateToNextScreen() {
    // Navigate to the next screen
    // Replace 'NextScreen()' with the appropriate screen widget
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFF15803D),
        child: Center(
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/icons/donescreenvector.svg',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0.h),
                  child: Container(
                    // height: 50.h,
                    // width: 200.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200.h,
                        ),
                        Opacity(
                            opacity: 0.8,
                            child: SvgPicture.asset(
                              'assets/icons/alldonecheckbox.svg',
                              height: 111.h,
                              width: 111.w,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'All Done!',
                          style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w600, color: const Color(0xFFFFFFFF)),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Redirecting you to the Dashboard.',
                          style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xFFFFFFFF)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
