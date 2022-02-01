import 'package:flutter/material.dart';
import 'package:kganya_nape_website/constants/colors.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      color: AppColors.darkGrey,
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'KGANYA NAPE',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 30,
                    ),
              ),
              Text(
                'FINE ART & COMMISSIONS',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.w100,
                    ),
              ),
            ],
          ),
          Container(
            width: size.width * .2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'HOME',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 1,
                  color: Colors.white,
                ),
                Text(
                  'ABOUT',
                  style: TextStyle(
                      // color: AppColors.red,
                      // fontWeight: FontWeight.bold,
                      ),
                ),
                Container(
                  width: 1,
                  color: Colors.white,
                ),
                Text(
                  'PURCHASE',
                  style: TextStyle(
                      // color: AppColors.red,
                      // fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
