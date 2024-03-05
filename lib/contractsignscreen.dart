import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'alldonescreen.dart';

class ContractSignScreen extends StatefulWidget {
  const ContractSignScreen({super.key});

  @override
  State<ContractSignScreen> createState() => _ContractSignScreenState();
}

class _ContractSignScreenState extends State<ContractSignScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/contract.png',
            height: 476.h,
            width: 360.w,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 30.h,),
          SizedBox(
            height: 42.h,
            width: 143.w,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF16A34A),
                  ),
                  foregroundColor: MaterialStateProperty.all(
                    const Color(0xffffffff),
                  ),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  side: MaterialStateProperty.all(BorderSide(width: 1.w, color: const Color(0xFF000000).withOpacity(0.12))),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AllDoneScreen()));
                },
                child: Text(
                  'Sign Contract',
                  style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w600, color: const Color(0xFFFFFFFF)),
                )),
          )
        ],
      ),
    );
  }
}