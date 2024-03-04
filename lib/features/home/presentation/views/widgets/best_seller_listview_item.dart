
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/public_widgets/custom_text.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const CustomText(
                    text: 'Harry Potter\nand the Goblet Fire',
                    fontFamily: kGtSectraFine,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3),
                const CustomText(
                  text: 'J.k.Rowling',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                const SizedBox(height: 3),
                const Row(
                  children: [
                    CustomText(
                      text: r'19.9 $',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xffFFDD4F),
                      size: 17,
                    ),
                    SizedBox(width: 6.3),
                    CustomText(
                      text: '4.8 ',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(width: 5),
                    CustomText(
                      text: '(2390)',
                      colorText: Color(0xff707070),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
