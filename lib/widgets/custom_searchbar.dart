import 'package:flutter/material.dart';
import 'package:flutter_openart_nft/shared/theme.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 45,
      decoration: BoxDecoration(
          color: AppColorGrayscale.inputBackground,
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/vector/ic_search.svg',
              height: 16,
              width: 16,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextFormField(
                style: AppText.textXSmall.copyWith(
                    fontWeight: AppText.medium,
                    color: AppColorGrayscale.placeholder),
                decoration: InputDecoration.collapsed(
                  hintText: 'Search items, collections, and accounts',
                  hintStyle: AppText.textXSmall.copyWith(
                      fontWeight: AppText.medium,
                      color: AppColorGrayscale.placeholder),
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/vector/ic_microphone.svg',
              height: 16,
              width: 16,
            ),
          ],
        ),
      ),
    );
  }
}
