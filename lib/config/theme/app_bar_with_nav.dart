import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';

class AppBarWithNav extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithNav({
    super.key,
    this.barHeight,
    required this.title,
    this.onTapBack,
  });

  final double? barHeight;
  final String title;
  final Function()? onTapBack;

  @override
  Size get preferredSize => Size.fromHeight(barHeight ?? 120.ah);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 4.ah),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/svg/full-logo-icon.svg'),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          'DELIVERY ADDRESS',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Umuezike Road, Oyo State',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset('assets/svg/icon_notif.svg'),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: GestureDetector(
                onTap: onTapBack,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.navigate_before),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 0.5),
          ],
        ),
      ),
    );
  }
}
