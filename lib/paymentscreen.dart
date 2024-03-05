import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'donescreen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBF6),
      body: Column(
        children: [
          SafeArea(
              child: SizedBox(
            height: 20.h,
          )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/icons/paybackarrow.svg',
                    height: 36.h,
                    width: 36.w,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Purchasing",
                  style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w600, color: const Color(0xFF000000)),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Text(
                      "Agrizy ",
                      style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xFF78716C)),
                    ),
                    SvgPicture.asset(
                      'assets/icons/backarrow.svg',
                      height: 12.h,
                      width: 10.w,
                    ),
                    Text(
                      " Keshav Industries",
                      style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xFF78716C)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: const Color(0xFFE7E5E4),
            height: 60.h,
          ),
          Column(
            children: [
              Text(
                "enter amount".toUpperCase(),
                style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w600, color: const Color(0xFF000000).withOpacity(0.4)),
              ),
              const TextFieldExpanding(),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Returns",
                  style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xFF475569)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: const Icon(
                        Icons.currency_rupee_sharp,
                        color: Color(0xFFA8A29E),
                        size: 20,
                      ),
                    ),
                    Text(
                      "56,555",
                      style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF475569)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: const Color(0xFFE7E5E4),
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Net Yield",
                      style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xFF475569)),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    SvgPicture.asset(
                      'assets/icons/netyieldicon.svg',
                      height: 18.h,
                      width: 38.w,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "13.11",
                      style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF475569)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: const Icon(
                        Icons.percent,
                        color: Color(0xFFA8A29E),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: const Color(0xFFE7E5E4),
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tenure",
                  style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xFF475569)),
                ),
                Row(
                  children: [
                    Text(
                      "61 ",
                      style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF475569)),
                    ),
                    Text(
                      "days",
                      style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w500, color: const Color(0xFFA8A29E)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100.h,
        color: const Color(0xFFFFFFFF),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Balance: ₹1,00,000",
                      style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xFF44403C)),
                    ),
                    Text(
                      "Required: ₹0",
                      style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xFF44403C)),
                    ),
                  ],
                ),
              ),
              SlideAction(
                height: 45.h,
                borderRadius: 6.r,
                elevation: 0,
                innerColor: const Color(0xFF15803D),
                outerColor: const Color(0xFFE7E5E4),
                sliderButtonIconPadding: 12,
                sliderButtonIcon: const Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Color(0xFFFFFFFF),
                ),
                text: "Swipe to pay",
                sliderRotate: false,
                textStyle: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w600, color: const Color(0xFF1C1917)),
                onSubmit: () {
                  HapticFeedback.heavyImpact();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DoneScreen()));
                  return null;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldExpanding extends StatefulWidget {
  const TextFieldExpanding({super.key});

  @override
  State<TextFieldExpanding> createState() => _TextFieldExpandingState();
}

class _TextFieldExpandingState extends State<TextFieldExpanding> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200.0.w,
        child: TextField(
          maxLines: null,
          keyboardType: TextInputType.number,
          style: GoogleFonts.inter(fontSize: 24.sp, fontWeight: FontWeight.w600, color: const Color(0xFF0C0A09)),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 12.0,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: const Icon(
                  Icons.currency_rupee_sharp,
                  color: Color(0xFFA8A29E),
                  size: 30,
                ),
              ),
              hintText: "Min 50,000",
              hintStyle: GoogleFonts.inter(fontSize: 24.sp, fontWeight: FontWeight.w600, color: const Color(0xFFA8A29E)),
              border: const OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
