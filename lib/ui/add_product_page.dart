import 'package:flowers_e_shop/consts/colors.dart';
import 'package:flowers_e_shop/consts/decorations/border_radiusess.dart';
import 'package:flowers_e_shop/consts/size_config_and_colors.dart';
import 'package:flowers_e_shop/consts/strings.dart';
import 'package:flowers_e_shop/providers/add_product_provider.dart';
import 'package:flowers_e_shop/ui/widgets/text_10_grey_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: gW(30.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textinfoAboutPlant(),
          _inputTitle(context),
          text10grey(mainPhoto),
          _photoInputs(),
          text10grey(selectTheTypeOfPlant),
          _selectPlantType(context),
          text10grey(enterThePrice),
          _priceInput(context),
          SizedBox(height: gH(30.0)),
          _diametrInput(context),
          SizedBox(height: gH(20.0)),
          _heightInput(context),
          SizedBox(height: gH(16.0)),
          _textIsPlantWith(isPlantWithPot),
          _isWithSomething(context, isPot: true),
          _textIsPlantWith(isPlantWithFertilizer),
          _isWithSomething(context, isPot: false),
          SizedBox(height: gH(27.0)),
          text10grey(additionalInfo),
          _additionalInfoTextField(context),
          SizedBox(height: gH(27.0)),
          _lastLayer(),
          SizedBox(
            height: gH(31.0),
          ),
        ],
      ),
    );
  }

  Row _lastLayer() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            reconsiderTheAdd,
            style: TextStyle(
              color: blackColor,
              fontSize: gW(13.0),
            ),
          ),
        ),
        SizedBox(width: gW(31.0)),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0.0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius5,
              side: BorderSide.none,
            ),
            primary: greenColor,
            elevation: 0,
            fixedSize: Size(
              gW(101.0),
              gH(34.0),
            ),
          ),
          child: Text(
            publishTheAdd,
            style: TextStyle(
                color: whiteColor,
                fontSize: gW(13.0),
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  Container _additionalInfoTextField(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: gH(112.0),
      width: gW(345.0),
      decoration: BoxDecoration(
        borderRadius: borderRadius5,
        color: whiteColor,
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
        ),
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.top,
        maxLines: null,
        minLines: null,
        expands: true,
        controller: context.read<AddProductProvider>().additionalInfoController,
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
          fillColor: whiteColor,
          filled: true,
        ),
      ),
    );
  }

  Padding _isWithSomething(BuildContext context, {required bool isPot}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: gW(17.0), vertical: gH(15.0)),
      child: Row(
        children: [
          Image.asset(
            "assets/images/icons8-flower-bouquet-64.png",
            height: gH(25),
          ),
          Image.asset(
            "assets/images/icons8-plus-48.png",
            height: gH(25),
          ),
          Image.asset(
            isPot
                ? "assets/images/icons8-pot-64.png"
                : "assets/images/icons8-fertilizer-64.png",
            height: gH(25),
          ),
          SizedBox(width: gW(26.0)),
          ElevatedButton(
            onPressed: () {
              if (isPot) {
                Provider.of<AddProductProvider>(context, listen: false)
                    .switchIsWithPot(false);
              } else {
                Provider.of<AddProductProvider>(context, listen: false)
                    .switchIsWithFertilizer(false);
              }
            },
            child: Text(
              no,
              style: TextStyle(
                fontSize: gH(10.0),
                color: isPot
                    ? (context.watch<AddProductProvider>().isWithPot
                        ? greenColor
                        : whiteColor)
                    : (context.watch<AddProductProvider>().isWithFertilizer
                        ? greenColor
                        : whiteColor),
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius5,
              ),
              primary: isPot
                  ? (context.watch<AddProductProvider>().isWithPot
                      ? whiteColor
                      : greenColor)
                  : (context.watch<AddProductProvider>().isWithFertilizer
                      ? whiteColor
                      : greenColor),
              side: BorderSide(
                color: greenColor,
              ),
              fixedSize: Size(
                gW(50.0),
                gH(30.0),
              ),
            ),
          ),
          Text(
            " " + or + " ",
            style: TextStyle(
              fontSize: gH(10.0),
              fontWeight: FontWeight.w400,
              color: blackColor,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (isPot) {
                Provider.of<AddProductProvider>(context, listen: false)
                    .switchIsWithPot(true);
              } else {
                Provider.of<AddProductProvider>(context, listen: false)
                    .switchIsWithFertilizer(true);
              }
            },
            child: Text(
              yes,
              style: TextStyle(
                fontSize: gH(10.0),
                color: isPot
                    ? (context.watch<AddProductProvider>().isWithPot
                        ? whiteColor
                        : greenColor)
                    : (context.watch<AddProductProvider>().isWithFertilizer
                        ? whiteColor
                        : greenColor),
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius5,
              ),
              primary: isPot
                  ? (context.watch<AddProductProvider>().isWithPot
                      ? greenColor
                      : whiteColor)
                  : (context.watch<AddProductProvider>().isWithFertilizer
                      ? greenColor
                      : whiteColor),
              side: BorderSide(
                color: greenColor,
              ),
              fixedSize: Size(
                gW(50.0),
                gH(30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Align _textIsPlantWith(String text) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: gW(13.0),
          color: Colors.black,
        ),
      ),
    );
  }

  SizedBox _heightInput(BuildContext context) {
    return SizedBox(
      height: gH(52.0),
      width: gW(229.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: gW(25),
          ),
          _heightImage(),
          const Spacer(),
          _smInput(
            context,
            isHeight: true,
            controller: context.read<AddProductProvider>().heightController,
          ),
        ],
      ),
    );
  }

  SizedBox _diametrInput(BuildContext context) {
    return SizedBox(
      height: gH(53.0),
      width: gW(229.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: gW(25),
          ),
          _diametrImage(),
          const Spacer(),
          _smInput(
            context,
            isHeight: false,
            controller: context.read<AddProductProvider>().diametrController,
          ),
        ],
      ),
    );
  }

  Container _smInput(
    BuildContext context, {
    required bool isHeight,
    required TextEditingController controller,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius5,
        color: whiteColor,
      ),
      height: gH(43.0),
      width: gW(105.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (String v) {
              if (!RegExp(r'^[0-9]+$').hasMatch(v)) {
                List<String> _list = [];
                for (int i = 0; i < v.length; i++) {
                  if (v.codeUnitAt(i) < 58 && v.codeUnitAt(i) > 47) {
                    _list.add(v[i]);
                  }
                }
                String str = _list.join();
                Provider.of<AddProductProvider>(context, listen: false)
                    .sintezInt(v: str, isHeight: isHeight);
              }
            },
            style: TextStyle(
              fontSize: gW(13.0),
              fontWeight: FontWeight.w400,
            ),
            controller: controller,
            textAlign: TextAlign.end,
            cursorColor: Colors.white,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffix: const Text("sm"),
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: borderRadius5,
              ),
              constraints: BoxConstraints.tight(
                Size(
                  gW(60.0),
                  gH(43.0),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Provider.of<AddProductProvider>(context, listen: false)
                      .smIncrement(isHeight);
                },
                child: Icon(
                  Icons.arrow_drop_up,
                  size: gW(24.0),
                ),
              ),
              InkWell(
                onTap: () {
                  Provider.of<AddProductProvider>(context, listen: false)
                      .smDecrement(isHeight);
                },
                child: Icon(
                  Icons.arrow_drop_down,
                  size: gW(24.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _diametrImage() {
    return SizedBox(
      width: gW(40.0),
      child: Column(children: [
        Text(
          sizeOfDiametr,
          style: TextStyle(
              fontSize: gH(6.0),
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
        Image.asset("assets/images/Arrow5.png"),
        Image.asset('assets/images/icons8-ornamental-64.png')
      ]),
    );
  }

  SizedBox _heightImage() {
    return SizedBox(
      width: gW(97.0),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/icons8-ornamental-64.png',
            height: gH(40.0),
            width: gW(40.0),
          ),
          Positioned(
            top: gH(18.0),
            left: gW(25.0),
            child: RotationTransition(
                turns: const AlwaysStoppedAnimation(0.25),
                child: Image.asset(
                  "assets/images/Arrow5.png",
                  height: gH(5.0),
                  width: gW(35.0),
                  fit: BoxFit.fitWidth,
                )),
          ),
          Positioned(
            top: gH(15.0),
            right: gW(15.0),
            child: Text(
              sizeOfHeight,
              style: TextStyle(
                  fontSize: gH(6.0),
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Row _priceInput(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _inputPrice(context),
        _currencyType(context),
      ],
    );
  }

  Container _currencyType(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: gH(12.0)),
      height: gH(43),
      width: gW(105),
      padding: EdgeInsets.symmetric(horizontal: gW(8.0)),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: borderRadius5,
      ),
      child: DropdownButton<String>(
        underline: const SizedBox(),
        style: TextStyle(fontSize: gW(13), color: c757373),
        hint: SizedBox(
          height: gH(43),
          width: gW(67),
        ),
        icon: Icon(
          Icons.expand_more,
          size: gW(20.0),
        ),
        value: context
            .watch<AddProductProvider>()
            .currencies[context.watch<AddProductProvider>().selectedCurrency],
        items: List.generate(
          context.watch<AddProductProvider>().currencies.length,
          (index) => DropdownMenuItem<String>(
            onTap: () {
              Provider.of<AddProductProvider>(context, listen: false)
                  .currensyChanged(index);
            },
            value: context.watch<AddProductProvider>().currencies[index],
            child: Text(
              context.watch<AddProductProvider>().currencies[index],
            ),
          ),
        ),
        onChanged: (v) {},
      ),
    );
  }

  _selectPlantType(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: gH(17.0)),
      height: gH(43),
      width: gW(229),
      padding: EdgeInsets.symmetric(horizontal: gW(8.0)),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: borderRadius5,
      ),
      child: DropdownButton<String>(
          underline: const SizedBox(),
          style: TextStyle(fontSize: gW(13), color: c757373),
          hint: SizedBox(
            height: gH(43),
            width: gW(190),
          ),
          icon: Icon(
            Icons.expand_more,
            size: gW(20.0),
          ),
          value: context
              .watch<AddProductProvider>()
              .plantTypes[context.watch<AddProductProvider>().selected],
          items: List.generate(
            context.watch<AddProductProvider>().plantTypes.length,
            (index) => DropdownMenuItem<String>(
              onTap: () {
                Provider.of<AddProductProvider>(context, listen: false)
                    .onChanged(index);
              },
              value: context.watch<AddProductProvider>().plantTypes[index],
              child: Text(
                context.watch<AddProductProvider>().plantTypes[index],
              ),
            ),
          ),
          onChanged: (v) {}),
    );
  }

  _inputPrice(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: gH(5.0)),
      decoration: BoxDecoration(
        borderRadius: borderRadius5,
        color: whiteColor,
      ),
      height: gH(43.0),
      width: gW(229.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            key: const Key("Price"),
            controller: context.read<AddProductProvider>().priceController,
            textAlign: TextAlign.end,
            cursorColor: Colors.white,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: borderRadius5,
              ),
              constraints: BoxConstraints.tight(
                Size(
                  gW(200.0),
                  gH(43.0),
                ),
              ),
            ),
            style: TextStyle(fontSize: gW(13.0)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Provider.of<AddProductProvider>(context, listen: false)
                      .incrementPrice();
                },
                child: Icon(
                  Icons.arrow_drop_up,
                  size: gW(24.0),
                ),
              ),
              InkWell(
                onTap: () {
                  Provider.of<AddProductProvider>(context, listen: false)
                      .decrementPrice();
                },
                child: Icon(
                  Icons.arrow_drop_down,
                  size: gW(24.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _photoInputs() {
    return SizedBox(
      height: gH(128.0),
      width: gW(368.0),
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: gH(16.0)),
        itemCount: 8,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: gH(8.0),
          mainAxisSpacing: gH(8.0),
        ),
        itemBuilder: (_, __) {
          return Container(
            height: gH(60.0),
            width: gH(60.0),
            decoration: BoxDecoration(
                color: lightGreyColor,
                borderRadius: BorderRadius.circular(gW(7.0))),
            child: Icon(
              __ == 0 ? Icons.add_photo_alternate_outlined : Icons.add,
              size: gW(45.0),
              color: greyColor,
            ),
          );
        },
      ),
    );
  }

  SizedBox _inputTitle(BuildContext context) {
    return SizedBox(
      height: gH(90.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          enterTheTitle,
          style: TextStyle(
            color: greyColor,
            fontSize: gW(10.0),
            fontWeight: FontWeight.w400,
          ),
        ),
        TextFormField(
          controller: context.read<AddProductProvider>().titleController,
          decoration: InputDecoration(
            constraints: BoxConstraints.tight(
              Size(
                gW(345.0),
                gH(43.0),
              ),
            ),
            fillColor: whiteColor,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                gW(7.0),
              ),
            ),
          ),
        )
      ]),
    );
  }

  Padding _textinfoAboutPlant() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: gH(19.0)),
      child: Text(
        infoAboutThePlant,
        style: TextStyle(
          fontSize: gW(13.0),
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}
