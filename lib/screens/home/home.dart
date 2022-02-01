import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kganya_nape_website/constants/colors.dart';
import 'package:kganya_nape_website/widgets/custom_appbar.dart';
import 'package:kganya_nape_website/widgets/on_hover.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemCard(
                      image: 'assets/images/Art Photos/running.png',
                      text: 'ABSTRACTS'),
                  ItemCard(
                      image: 'assets/images/Art Photos/downsized.png',
                      text: 'REALISIM'),
                  ItemCard(
                      image: 'assets/images/Art Photos/robot.jpg',
                      text: 'YEAH'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatefulWidget {
  const ItemCard({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image;
  final String text;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  var isHovering = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return OnHover(
      builder: (isHovering) {
        return SizedBox(
          height: size.height * .68,
          width: size.width * .25,
          child: Card(
            elevation: 50,
            shadowColor: Colors.white,
            color: Colors.white,
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
                // ),

                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                  color: AppColors.darkMaroon.withOpacity(isHovering ? 0 : .8),
                ),
                if (!isHovering)
                  Center(
                    child: Container(
                      color: AppColors.darkGrey,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      // width: 200,
                      height: 50,
                      child: Text(
                        widget.text,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),

                // Image.asset('assets/images/Art Photos/running.png')
              ],
            ),
          ),
        );
      },
    );

    //   InkWell(
    //     onTap: () {},
    //     onHover: (value) {
    //       setState(() {
    //         isHovering = !isHovering;
    //       });
    //     },
    //     child: AnimatedContainer(
    //       duration: const Duration(milliseconds: 500),
    //       curve: Curves.easeIn,
    //       height: isHovering ? size.height * .7 : size.height * .68,
    //       width: isHovering ? size.width * .3 : size.width * .25,
    //       child: Card(
    //         elevation: 50,
    //         shadowColor: Colors.white,
    //         color: Colors.white,
    //         child: Stack(
    //           children: [
    //             // AnimatedContainer(
    //             //   duration: const Duration(milliseconds: 500),
    //             //   curve: Curves.easeIn,
    //             //   height: isHovering ? size.height * .68 : size.height * .7,
    //             //   width: isHovering ? size.width * .25 : size.width * .3,
    //             //   color: Colors.black,
    //             //   child:
    //             Image.asset(
    //               widget.image,
    //               // fit: BoxFit.,
    //             ),
    //             // ),

    //             AnimatedContainer(
    //               duration: const Duration(milliseconds: 500),
    //               curve: Curves.easeIn,
    //               color: AppColors.darkMaroon.withOpacity(isHovering ? 0 : .8),
    //             ),
    //             // Image.asset('assets/images/Art Photos/running.png')
    //           ],
    //         ),
    //       ),
    //     ),
    //   );
  }
}
