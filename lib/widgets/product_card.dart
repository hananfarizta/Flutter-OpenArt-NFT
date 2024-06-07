import 'package:flutter/material.dart';
import 'package:flutter_openart_nft/models/product_model.dart';
import 'package:flutter_openart_nft/shared/theme.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  final Products product;
  const ProductCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                product.imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            product.title,
            style: AppText.displayBoldSmall
                .copyWith(color: AppColorGrayscale.titleActive),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset(
                product.imgProfile,
                height: 52,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: AppText.displayBoldSmall.copyWith(
                          color: AppColorGrayscale.titleActive, fontSize: 18),
                    ),
                    Text(
                      'Creator',
                      style: AppText.textXSmall
                          .copyWith(color: AppColorGrayscale.label),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/vector/ic_love.svg',
                height: 22,
              ),
              const SizedBox(
                width: 11,
              ),
            ],
          )
        ],
      ),
    );
  }
}
