import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_mart/config/theme/screen_sizing.dart';

class AppBarWithSearch extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithSearch({super.key, this.barHeight, required this.title});

  final double? barHeight;
  final String title;

  @override
  Size get preferredSize => Size.fromHeight(barHeight ?? 160.ah);

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
            SearchField(),
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

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.search_rounded),
          ),
          Expanded(
            child: TextField(
              controller: textController,
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(fontSize: 13),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
