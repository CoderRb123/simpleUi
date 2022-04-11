import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.black,
          width: 2.5,
        ),
      ),
      child: TextFormField(
        style: GoogleFonts.rubik(
          fontWeight: FontWeight.w500,
          color: const Color(0xFF000b03),
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: "Find a Location",
          hintStyle: GoogleFonts.rubik(
            fontWeight: FontWeight.w500,
            color: const Color(0xFF000b03),
          ),
        ),
      ),
    );
  }
}
