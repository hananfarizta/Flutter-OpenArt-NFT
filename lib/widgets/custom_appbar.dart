import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/bitmap/img_logo.png',
            width: 140,
            height: 37,
          ),
          SvgPicture.asset(
            'assets/vector/ic_menu.svg',
          )
        ],
      ),
    );
  }
}
