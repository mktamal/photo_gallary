import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Function? onLandingPressed;
  final Function? onActionPressed;

  const CustomAppBar(
      {super.key, this.title, this.onLandingPressed, this.onActionPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          if (onLandingPressed != null) {
            onLandingPressed!();
          }
        },
        child: Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(top: 19, left: 10),
          //padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
              child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
        ),
      ),
      title: title != null
          ? Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                title!,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : null,
      actions: [
        GestureDetector(
          onTap: () {
            if (onActionPressed != null) {
              onLandingPressed!();
            }
          },
          child: Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 18, top: 19),
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(429, 98);
}
