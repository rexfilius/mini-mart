import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';

class AppBarWithNav extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithNav({super.key, this.barHeight, required this.title});

  final double? barHeight;
  final String title;

  @override
  Size get preferredSize => Size.fromHeight(barHeight ?? 95.ah);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 4.ah),
            Text('DELIVERY ADDRESS'),
            Text('Umuezike Road, Oyo State'),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
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
            Divider(thickness: 0.5),
          ],
        ),
      ),
    );
  }
}
