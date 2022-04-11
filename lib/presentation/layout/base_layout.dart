import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uitest/Data/Dummies/menu_dummy.dart';
import 'package:uitest/Data/Model/MenuItem.dart';
import 'package:uitest/presentation/components/gradient_effect.dart';
import 'package:uitest/presentation/components/search_bar.dart';
import 'package:uitest/presentation/layout/base_menu.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientEffect(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Now",
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: const Color(0xFF000b03),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: const Color(0xFF000b03),
                      size: 30.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Tabanan 16, Ball",
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: const Color(0xFF000b03),
                      ),
                    ),
                  ],
                ),
                trailing: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 5.0,
                          offset: const Offset(0, 0),
                        ),
                      ]),
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Text(
                "All You needs,\none app",
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w700,
                  fontSize: 35.sp,
                  color: const Color(0xFF000b03),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            const SearchBar(),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
                child: BaseMenu(
              items: [
                ...menu.map((e) {
                  return MenuItemModel.fromJson(e);
                })
              ],
            )),
          ],
        ),
      ),
    );
  }
}
