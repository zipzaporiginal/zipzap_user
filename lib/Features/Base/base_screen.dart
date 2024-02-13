import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zip_zap_user/Constands/app_colors.dart';
import 'package:zip_zap_user/custom/widgets/container_custom.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

int _selectedIndex = 0;

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ContainerCustom(
            height: 90.h,
          ),
          IndexedStack()
        ],
      ),
      bottomNavigationBar: ContainerCustom(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.sp), topRight: Radius.circular(20.sp)),
        border: Border.all(
          width: 3.sp,
          color: boarderColor,
        ),
        height: 80.h,
        bgColor: primaryWhiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                icon: Icon(
                  CupertinoIcons.home,
                  size: 30.sp,
                  color: _selectedIndex == 0 ? primaryGreenColor : blackColor,
                )),
            IconButton(
                onPressed: () {
                  _selectedIndex = 1;
                },
                icon: Icon(
                  Icons.search,
                  size: 30.sp,
                  color: _selectedIndex == 1 ? primaryGreenColor : blackColor,
                )),
            IconButton(
                onPressed: () {
                  _selectedIndex = 2;
                },
                icon: Icon(
                  Icons.add_shopping_cart_outlined,
                  size: 30.sp,
                  color: _selectedIndex == 2 ? primaryGreenColor : blackColor,
                )),
            IconButton(
                onPressed: () {
                  _selectedIndex = 3;
                },
                icon: Icon(
                  Icons.delivery_dining,
                  size: 30.sp,
                  color: _selectedIndex == 3 ? primaryGreenColor : blackColor,
                )),
            IconButton(
                onPressed: () {
                  _selectedIndex = 4;
                },
                icon: Icon(
                  CupertinoIcons.person,
                  size: 30.sp,
                  color: _selectedIndex == 4 ? primaryGreenColor : blackColor,
                )),
          ],
        ),
      ),
    );
  }
}
