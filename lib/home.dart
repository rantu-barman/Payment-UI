import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'paymentscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedmetric = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBF6),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/backarrowgreen.svg',
                        height: 17.h,
                        width: 13.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Back to Deals",
                        style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w500, color: const Color(0xFF15803D)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SvgPicture.asset(
                    'assets/icons/companylogo.svg',
                    height: 90.h,
                    width: 90.w,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Agrizy",
                        style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w600, color: const Color(0xFF152420)),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SvgPicture.asset(
                        'assets/icons/backarrow.svg',
                        height: 17.h,
                        width: 13.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Keshav Industries",
                        style: GoogleFonts.inter(fontSize: 18.sp, fontWeight: FontWeight.w600, color: const Color(0xFF78716C)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    "Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF78716C),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 316.w,
                    height: 142.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFD6D3D1)),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: _buildSquare('min invt'.toUpperCase(), 1)),
                              const VerticalDivider(
                                width: 0,
                              ),
                              Expanded(child: _buildSquare('tenure'.toUpperCase(), 2)),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(child: _buildSquare('net yield'.toUpperCase(), 3)),
                              const VerticalDivider(
                                width: 0,
                              ),
                              Expanded(child: _buildSquare('raised'.toUpperCase(), 4)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: const Color(0xFFE7E5E4),
              height: 60.h,
            ),
            _googleblock('Clients'),
            SizedBox(
              height: 30.h,
            ),
            _googleblock('Backed by'),
            Divider(
              color: const Color(0xFFE7E5E4),
              height: 60.h,
            ),
            _highlights('Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.'),
            Divider(
              color: const Color(0xFFE7E5E4),
              height: 60.h,
            ),
            _metrics(''),
            Divider(
              color: const Color(0xFFE7E5E4),
              height: 60.h,
            ),
            _documents(
              '',
            ),
            SizedBox(
              height: 80.h,
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 84.h,
        color: const Color(0xFFFFFFFF),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "FILLED",
                  style: GoogleFonts.inter(fontSize: 10.sp, fontWeight: FontWeight.w600, color: const Color(0xFF000000).withOpacity(0.4)),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "30%",
                  style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF374151)),
                )
              ]),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen()));
                    },
                    child: Text(
                      'Tap to Invest',
                      style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w600, color: const Color(0xFFFFFFFF)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _googleblock(String name) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 25.h,
            width: 300.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 2.0.w),
                    child: SvgPicture.asset(
                      'assets/icons/googlelogo.svg',
                      height: 22.59.h,
                      width: 66.78.w,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _metrics(String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Text(
            'Key Metrics',
            style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
            height: 40.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: metricTags.length,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    onTap: () {
                      if (selectedmetric == -1) {
                        setState(() {
                          selectedmetric = index;
                        });
                      } else if (selectedmetric == index) {
                        setState(() {
                          selectedmetric = -1;
                        });
                      } else {
                        setState(() {
                          selectedmetric = index;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.r), color: selectedmetric == index ? const Color(0xFF15803D) : const Color(0xFFE7E5E4)),
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Center(
                        child: Text(
                          metricTags[index],
                          style: GoogleFonts.inter(fontSize: 10.sp, fontWeight: FontWeight.w600, color: selectedmetric == index ? const Color(0xFFFFFFFF) : const Color(0xFF78716C)),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Container(
            width: 316.w,
            height: 142.h,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFD6D3D1)),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: _buildSquaremetric('active deals'.toUpperCase(), 1)),
                      const VerticalDivider(
                        width: 0,
                      ),
                      Expanded(child: _buildSquaremetric('raised'.toUpperCase(), 2)),
                    ],
                  ),
                ),
                const Divider(
                  height: 0,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(child: _buildSquaremetric('matured deals'.toUpperCase(), 3)),
                      const VerticalDivider(
                        width: 0,
                      ),
                      Expanded(child: _buildSquaremetric('on time payment'.toUpperCase(), 4)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _highlights(String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Text(
            'Highlights',
            style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 173.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              padding: EdgeInsets.only(left: 22.w),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 15.0.w),
                  child: Container(
                    width: 300.w,
                    height: 193.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFD6D3D1)),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/bulbicon.svg',
                            height: 35.h,
                            width: 30.w,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.',
                            style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xFF78716C)),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget _documents(
    String description,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Text(
            'Documents',
            style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          width: 340.w,
          height: 380.h,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 2,
              padding: EdgeInsets.only(left: 22.w),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 14.0.h),
                  child: Container(
                    width: 340.w,
                    height: 180.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFD6D3D1)),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: documentswidget(documentsvg[index], documenttitle[index], documentdesc[index]),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget documentswidget(String svgicon, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            svgicon,
            height: 48.h,
            width: 48.w,
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 250.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      desc,
                      style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w400, color: const Color(0xFF78716C)),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/icons/downarrow.svg',
                height: 20.h,
                width: 20.w,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSquare(String text, int position) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF000000).withOpacity(0.02),
          // border: Border.all(color: const Color(0xFFD6D3D1)),
          borderRadius: BorderRadius.only(
            topLeft: position == 1 ? Radius.circular(6.r) : Radius.zero,
            topRight: position == 2 ? Radius.circular(6.r) : Radius.zero,
            bottomLeft: position == 3 ? Radius.circular(6.r) : Radius.zero,
            bottomRight: position == 4 ? Radius.circular(6.r) : Radius.zero,
          )),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.inter(fontSize: 10.sp, fontWeight: FontWeight.w600, color: const Color(0xFF78716C)),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  position == 1
                      ? Row(
                          children: [
                            Text(
                              '₹ ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            ),
                            Text(
                              '1 ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                            ),
                            Text(
                              'Lakh',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            )
                          ],
                        )
                      : const SizedBox.shrink(),
                  position == 2
                      ? Row(
                          children: [
                            Text(
                              '61 ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                            ),
                            Text(
                              'days',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            )
                          ],
                        )
                      : const SizedBox.shrink(),
                  position == 3
                      ? Row(
                          children: [
                            Text(
                              '13.23 ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                            ),
                            Text(
                              '%',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            )
                          ],
                        )
                      : const SizedBox.shrink(),
                  position == 4
                      ? Row(
                          children: [
                            Text(
                              '70 ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                            ),
                            Text(
                              '%',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            )
                          ],
                        )
                      : const SizedBox.shrink()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSquaremetric(String text, int position) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF000000).withOpacity(0.02),
          // border: Border.all(color: const Color(0xFFD6D3D1)),
          borderRadius: BorderRadius.only(
            topLeft: position == 1 ? Radius.circular(6.r) : Radius.zero,
            topRight: position == 2 ? Radius.circular(6.r) : Radius.zero,
            bottomLeft: position == 3 ? Radius.circular(6.r) : Radius.zero,
            bottomRight: position == 4 ? Radius.circular(6.r) : Radius.zero,
          )),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.inter(fontSize: 10.sp, fontWeight: FontWeight.w600, color: const Color(0xFF78716C)),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  position == 1
                      ? Row(
                          children: [
                            Text(
                              '6 ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                            ),
                            Text(
                              'of 18',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            )
                          ],
                        )
                      : const SizedBox.shrink(),
                  position == 2
                      ? Row(
                          children: [
                            Text(
                              '₹ ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            ),
                            Text(
                              '6.94 ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                            ),
                            Text(
                              'Cr',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            )
                          ],
                        )
                      : const SizedBox.shrink(),
                  position == 3
                      ? Row(
                          children: [
                            Text(
                              '12 ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                            ),
                            Text(
                              'of 18',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            )
                          ],
                        )
                      : const SizedBox.shrink(),
                  position == 4
                      ? Row(
                          children: [
                            Text(
                              '100 ',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF44403C)),
                            ),
                            Text(
                              '%',
                              style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF000000).withOpacity(0.3)),
                            )
                          ],
                        )
                      : const SizedBox.shrink()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> metricTags = [
  'funding'.toUpperCase(),
  'traction'.toUpperCase(),
  'financials'.toUpperCase(),
  'competition'.toUpperCase(),
];
final List<String> documentsvg = ['assets/icons/documentsicon.svg', 'assets/icons/documentsicon1.svg'];
final List<String> documenttitle = ['Invoice Discounting Contract', 'Company Pitch Deck'];
final List<String> documentdesc = ['All the legalese surrounding this deal and how it relates to you.', 'Read more about the company and see how they pitch to investors.'];
