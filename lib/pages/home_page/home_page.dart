import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_openart_nft/models/product_model.dart';
import 'package:flutter_openart_nft/widgets/custom_appbar.dart';
import 'package:flutter_openart_nft/shared/theme.dart';
import 'package:flutter_openart_nft/widgets/custom_searchbar.dart';
import 'package:flutter_openart_nft/widgets/product_card.dart';
import 'package:gradient_borders/gradient_borders.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Padding(
        padding: EdgeInsets.only(top: defaultMargin, bottom: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Discover, collect, and sell',
              style: AppText.displayBoldSmall
                  .copyWith(color: AppColorGrayscale.label, fontSize: 20),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Your Digital Art',
              style: AppText.displayBoldMedium
                  .copyWith(color: AppColorGrayscale.titleActive),
            ),
          ],
        ),
      );
    }

    Widget price() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Reserve Price',
              style: AppText.textMedium
                  .copyWith(color: AppColorGrayscale.titleActive),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              '1.50 ETH',
              style: AppText.displayBoldSmall
                  .copyWith(color: AppColorGrayscale.titleActive),
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              '\$2,683.73',
              style: AppText.textMedium.copyWith(
                  color: AppColorGrayscale.placeholder,
                  fontWeight: AppText.bold),
            ),
          ],
        ),
      );
    }

    Widget bidButton() {
      return Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.gradientAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'Place a Bid',
            style: AppText.linkLarge.copyWith(color: Colors.white),
          ),
        ),
      );
    }

    Widget viewArtworkButton() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border:
                const GradientBoxBorder(gradient: AppColors.gradientAccent)),
        child: Center(
          child: Text(
            'View Artwork',
            style: AppText.linkLarge
                .copyWith(color: AppColorGrayscale.titleActive),
          ),
        ),
      );
    }

    Widget carouselCard() {
      return CarouselSlider(
        items: [
          //1st Image of Slider
          ProductCard(
            Products(
                1,
                'Silent Wave',
                'Pawel Czerwinski',
                'assets/bitmap/img_product1.png',
                'assets/bitmap/img_profile1.png'),
          ),

          //2nd Image of Slider
          ProductCard(
            Products(
                2,
                'Silent Color',
                'Kennedy Yanko',
                'assets/bitmap/img_product2.png',
                'assets/bitmap/img_profile2.png'),
          ),

          //3rd Image of Slider
          ProductCard(
            Products(
                3,
                'George',
                'Holly Herndon',
                'assets/bitmap/img_product3.png',
                'assets/bitmap/img_profile3.png'),
          ),

          //4rd Image of Slider
          ProductCard(
            Products(
                4,
                'Mirror',
                'Addie Wagenknecht',
                'assets/bitmap/img_product4.png',
                'assets/bitmap/img_profile4.png'),
          ),

          //5rd Image of Slider
          ProductCard(
            Products(
                5,
                'Inside King Cross',
                'Jennifer Mehigan',
                'assets/bitmap/img_product5.png',
                'assets/bitmap/img_profile5.png'),
          ),
        ],

        //Slider Container properties
        options: CarouselOptions(
          height: 500.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.9,
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColorGrayscale.background,
      body: SingleChildScrollView(
        child: SafeArea(
            bottom: false,
            child: Padding(
              padding:
                  EdgeInsets.only(left: defaultMargin, right: defaultMargin),
              child: Column(
                children: [
                  const CustomAppBar(),
                  // title(),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomSearchBar(),
                  const SizedBox(
                    height: 24,
                  ),
                  carouselCard(),
                  price(),
                  bidButton(),
                  viewArtworkButton(),
                ],
              ),
            )),
      ),
    );
  }
}
