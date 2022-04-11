import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uitest/Data/Model/MenuItem.dart';

class MenuItem extends StatelessWidget {
  final MenuItemModel? item;
  final bool? isSelected;

  const MenuItem({Key? key, this.item, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            margin: const EdgeInsets.all(10.0),
            height: 100.sh,
            width: 100.sw,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected! ? Colors.black : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5.0,
                    offset: const Offset(0, 0),
                  ),
                ]),
            child: Icon(
              item!.icon,
              color: isSelected! ? Colors.white : Colors.black,
              size: 35.sp,
            ),
          ),
        ),
        Text(
          item!.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.w600,
            color:const Color(0xFF000b03),
          ),
        )
      ],
    );
  }
}
