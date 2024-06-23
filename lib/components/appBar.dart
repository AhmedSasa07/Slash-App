import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customAppbar extends StatelessWidget implements PreferredSize {
  const customAppbar({super.key});
  static const notificationColor = Color(0xffC12222);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 75.w,
      leading: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Slash.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Container(
        padding: EdgeInsets.zero,
        width: 170.w,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.location_on_rounded, size: 36.sp),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Nasr City',
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Cairo',
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            RotatedBox(
              quarterTurns: 3,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20.sp,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Icon(
                Icons.notifications_none,
                size: 36.sp,
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 2,
                  end: 2,
                ),
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: notificationColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
