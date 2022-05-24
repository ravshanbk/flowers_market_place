import 'package:flowers_e_shop/consts/strings.dart';
import 'package:flowers_e_shop/providers/list_of_adds_provider.dart';
import 'package:flowers_e_shop/ui/considering_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flowers_e_shop/consts/colors.dart';
import 'package:flowers_e_shop/consts/size_config_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListOfAddsPage extends StatelessWidget {
  const ListOfAddsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: gW(19.0),
        vertical: gH(50.0),
      ),
      child: StaggeredGrid.extent(
        crossAxisSpacing: gW(19.0),
        mainAxisSpacing: gH(17.0),
        maxCrossAxisExtent: gW(200.0),
        axisDirection: AxisDirection.down,
        children: List.generate(
          15,
          (__) => __ % 2 == 0 ? _smallBox(__, context) : _bigBox(__, context),
        ),
      ),
    );
  }

  Container _bigBox(int __, BuildContext context) {
    return Container(
      height: gH(258.0),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: whiteColor,
          width: gH(4.0),
        ),
        borderRadius: BorderRadius.circular(
          gW(5.0),
        ),
      ),
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ConsideringPage(),
                ),
              );
            },
            child: Container(
              height: gH(170.0),
              width: gW(179.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(gW(3.0)),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/severin-candrian-E3axNqcXtmk-unsplash 8.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: gW(5.0), vertical: gH(3.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            flowerName,
                            style: TextStyle(
                              fontSize: gH(12.0),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          _lovedOrNoButton(context, __)
                        ],
                      ),
                      Text(
                        address,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: gH(7.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: greyColor,
                          fontSize: gH(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        oneMillTwoHund,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: gH(16.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '  som',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: greyColor,
                          fontSize: gH(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _smallBox(int __, BuildContext context) {
    return Container(
      height: gH(193.0),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: whiteColor,
          width: gH(4.0),
        ),
        borderRadius: BorderRadius.circular(
          gW(5.0),
        ),
      ),
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ConsideringPage(),
                ),
              );
            },
            child: Container(
              height: gH(120.0),
              width: gW(180.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(gW(3.0)),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/severin-candrian-E3axNqcXtmk-unsplash 8.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: gW(5.0),
                top: gH(3.0),
                right: gW(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            flowerName,
                            style: TextStyle(
                              fontSize: gH(12.0),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: gH(10.0)),
                          Text(
                            address,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: gH(7.0),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      _lovedOrNoButton(context, __)
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: greyColor,
                          fontSize: gH(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        oneMillTwoHund,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: gH(16.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '  som',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: greyColor,
                          fontSize: gH(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextButton _lovedOrNoButton(BuildContext context, int __) {
    return TextButton(
      onPressed: () {
        Provider.of<ListOfAddsProvider>(context, listen: false).loved(__);
      },
      style: TextButton.styleFrom(
        animationDuration: const Duration(microseconds: 1),
        backgroundColor: whiteColor,
        padding: const EdgeInsets.all(0.0),
        alignment: const Alignment(1.0, 1.0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        primary: whiteColor,
        elevation: 0,
        shadowColor: null,
        minimumSize: Size(gW(30.0), gH(25.0)),
        maximumSize: Size(gW(50.0), gH(35.0)),
      ),
      child: Container(
        width: gW(49.0),
        height: gH(34.0),
        alignment: const Alignment(1.0, -0.8),
        child: context.watch<ListOfAddsProvider>().isLoveds[__]
            ? Image.asset(
                "assets/images/heart (2).png",
                height: gH(11.0),
              )
            : Image.asset(
                "assets/images/heart (7).png",
                height: gH(11.0),
              ),
      ),
    );
  }
}
