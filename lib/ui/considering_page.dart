import 'package:flowers_e_shop/consts/colors.dart';
import 'package:flowers_e_shop/consts/decorations/border_radiusess.dart';
import 'package:flowers_e_shop/consts/size_config_and_colors.dart';
import 'package:flowers_e_shop/consts/strings.dart';
import 'package:flowers_e_shop/providers/considering_page_provider.dart';
import 'package:flowers_e_shop/ui/widgets/text_10_grey_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConsideringPage extends StatelessWidget {
  const ConsideringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          _sliverAppBar(context),
          _body(context),
        ],
      ),
    );
  }

  SliverToBoxAdapter _body(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: gH(645.0),
        width: gW(407.0),
        margin: EdgeInsets.only(
          left: gW(10.0),
          top: gH(24.0),
          right: gW(10.0),
          bottom: gH(87.0),
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            gW(5.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _textPostTitle(),
            _textPrice(),
            _nextLayer(),
            _diametrAndPot(),
            _heightAndFertilizer(),
            SizedBox(height: gH(30.0)),
            Padding(
              padding: EdgeInsets.only(left: gW(40.0)),
              child: text10grey(additionalInfo),
            ),
            _additionalInfoTextField(context),
          ],
        ),
      ),
    );
  }

  Container _additionalInfoTextField(BuildContext context) {
    return Container(
       alignment:const  Alignment(1.0,-1.0),
      height: gH(216.0),
      width: gW(338.0),
      margin: EdgeInsets.only(
        left: gW(35.0),
      ),
      decoration: BoxDecoration(
        borderRadius: borderRadius5,
        color: bgColor,
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
        ),
      ),
      child: TextFormField(

        scrollPadding: EdgeInsets.all(0.0),
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        maxLines: null,
        minLines: null,
        expands: true,
        controller: context.read<ConsideringProvider>().additionalController,
        style: TextStyle(
         
          color: c757373,
          fontSize: gH(13.0),
        ),
        cursorColor: Colors.transparent,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: borderRadius5,
            borderSide: BorderSide.none,
          ),
          fillColor: bgColor,
          filled: true,
        ),
      ),
    );
  }

  Padding _diametrAndPot() {
    return Padding(
      padding:
          EdgeInsets.only(left: gW(34.0), right: gW(98.0), bottom: gH(11.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text10grey("  " + diametr),
              Container(
                height: gH(52.0),
                width: gW(113.0),
                padding: EdgeInsets.only(
                  right: gW(10.0),
                  top: gH(7.0),
                ),
                decoration: BoxDecoration(
                  borderRadius: borderRadius5,
                  color: bgColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Arrow5.png",
                          width: gW(28.0),
                        ),
                        Image.asset(
                          "assets/images/icons8-ornamental-64.png",
                          height: gW(42.0),
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Text(
                      "25 sm",
                      style: TextStyle(
                        fontSize: gW(12.0),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text10grey("  " + pot),
              Container(
                height: gH(52.0),
                width: gW(115.0),
                padding: EdgeInsets.only(left: gW(9.0), right: gW(9.0)),
                decoration: BoxDecoration(
                  borderRadius: borderRadius5,
                  color: bgColor,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/icons8-pot-64.png",
                      height: gH(36.0),
                      width: gW(34.0),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images/check (1).png",
                      height: gH(19.0),
                      width: gW(19.0),
                    ),
                    Text(
                      "/",
                      style: TextStyle(fontSize: gW(22.0)),
                    ),
                    Image.asset(
                      "assets/images/multiply.png",
                      height: gH(19.0),
                      width: gW(19.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: gH(3.0),
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding _heightAndFertilizer() {
    return Padding(
      padding: EdgeInsets.only(left: gW(34.0), right: gW(98.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text10grey("  " + height),
              Container(
                height: gH(52.0),
                width: gW(113.0),
                padding: EdgeInsets.only(
                  right: gW(10.0),
                ),
                decoration: BoxDecoration(
                  borderRadius: borderRadius5,
                  color: bgColor,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: gH(10.0),
                      child: Image.asset(
                        "assets/images/icons8-ornamental-64.png",
                        height: gW(42.0),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 25.0,
                      top: gH(10.0),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Image.asset(
                          "assets/images/Arrow5.png",
                          height: gH(16.0),
                          width: gW(38.0),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.0,
                      right: gW(0.0),
                      child: Text(
                        "45 sm",
                        style: TextStyle(
                          fontSize: gW(12.0),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text10grey("  " + fertilizer),
              Container(
                height: gH(52.0),
                width: gW(115.0),
                padding: EdgeInsets.only(left: gW(9.0), right: gW(9.0)),
                decoration: BoxDecoration(
                  borderRadius: borderRadius5,
                  color: bgColor,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/icons8-fertilizer-64.png",
                      height: gH(36.0),
                      width: gW(34.0),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images/check (1).png",
                      height: gH(19.0),
                      width: gW(19.0),
                    ),
                    Text(
                      "/",
                      style: TextStyle(fontSize: gW(22.0)),
                    ),
                    Image.asset(
                      "assets/images/multiply.png",
                      height: gH(19.0),
                      width: gW(19.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: gH(3.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _nextLayer() {
    return Padding(
      padding: EdgeInsets.only(
        left: gW(34.0),
        top: gH(38.0),
        right: gW(28.0),
        bottom: gH(28.0),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "  "+typeOfPlant,
                style: TextStyle(
                  fontSize: gW(10.0),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: gW(15.0)),
                alignment: Alignment.centerLeft,
                height: gH(34.0),
                width: gW(143.0),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(
                    gW(5.0),
                  ),
                ),
                child: Text(
                  chamomile,
                  style: TextStyle(
                    fontSize: gW(12.0),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          _buttonGreen(edit, onPressed: () {}),
          SizedBox(width: gW(10.0)),
          _buttonGreen(delete, onPressed: () {}),
        ],
      ),
    );
  }

  ElevatedButton _buttonGreen(String child, {required VoidCallback onPressed}) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(gW(72.0), gH(42.0)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              gW(6.0),
            ),
          ),
          primary: greenColor,
          elevation: 0,
          padding: const EdgeInsets.all(0.0),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          child,
          style: TextStyle(
            fontSize: gW(11.0),
            color: whiteColor,
            fontWeight: FontWeight.w400,
          ),
        ));
  }

  Padding _textPrice() {
    return Padding(
      padding: EdgeInsets.only(
        top: gH(34.0),
        left: gW(34.0),
        right: gW(220.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$1 200 000",
            style: TextStyle(
              fontSize: gW(20.0),
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "so'm",
            style: TextStyle(
              fontSize: gW(12.0),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Padding _textPostTitle() {
    return Padding(
      padding: EdgeInsets.only(left: gW(41.0), top: gH(20.0), right: gW(20.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Post title_____________\n_____________________",
            style: TextStyle(fontSize: gW(16.0), fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Image.asset("assets/images/heart (7).png", height: gH(18.0)),
          SizedBox(width: gW(3.0)),
          Image.asset("assets/images/heart (2).png", height: gH(18.0)),
        ],
      ),
    );
  }

  SliverAppBar _sliverAppBar(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      stretch: true,
      elevation: 0.0,
      pinned: true,
      toolbarHeight: gH(69.0),
      collapsedHeight: gH(70.0),
      expandedHeight: gH(361.0),
      flexibleSpace: FlexibleSpaceBar(
        key: const Key("fasdf"),
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0.0),
        title: Image.asset(
          "assets/images/severin-candrian-E3axNqcXtmk-unsplash 8.png",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        collapseMode: CollapseMode.parallax,
        stretchModes: const [StretchMode.zoomBackground],
      ),
    );
  }
}
