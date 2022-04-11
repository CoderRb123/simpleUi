import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uitest/Data/Model/MenuItem.dart';
import 'package:uitest/presentation/components/menu_item.dart';

class BaseMenu extends StatefulWidget {
  final List<MenuItemModel>? items;

  const BaseMenu({Key? key, this.items}) : super(key: key);

  @override
  _BaseMenuState createState() => _BaseMenuState();
}

class _BaseMenuState extends State<BaseMenu> {
  MenuItemModel? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "WHAT DO YOU NEED ?",
            style: GoogleFonts.rubik(
              fontWeight: FontWeight.w600,
              fontSize: 15.sp,
              color: const Color(0xFF000b03),
            ),
          ),
          trailing: widget.items!.isEmpty
              ? const SizedBox(
                  height: 0,
                  width: 0,
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...List.generate(3, (index) => index).map((e) {
                      return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: e == 0 ? Colors.black : Colors.white,
                              border: Border.all(
                                color:
                                    e != 0 ? Colors.black : Colors.transparent,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 5.0,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                            ),
                          ));
                    })
                  ],
                ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(5.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 35.h,
                crossAxisSpacing: 3.w),
            itemBuilder: (_, index) => InkWell(
              onTap: () {
                if (mounted) {
                  setState(() {
                    selectedItem = widget.items![index];
                  });
                }
              },
              child: MenuItem(
                item: widget.items![index],
                isSelected: selectedItem != null &&
                    selectedItem!.name == widget.items![index].name,
              ),
            ),
            itemCount: widget.items!.length,
          ),
        )
      ],
    );
  }
}
