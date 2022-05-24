import 'package:flowers_e_shop/consts/colors.dart';
import 'package:flowers_e_shop/consts/size_config_and_colors.dart';
import 'package:flowers_e_shop/consts/strings.dart';
import 'package:flowers_e_shop/providers/body-page_provider.dart';
import 'package:flowers_e_shop/ui/add_product_page.dart';
import 'package:flowers_e_shop/ui/considering_page.dart';
import 'package:flowers_e_shop/ui/list_of_adds_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);
  final List<Widget> widgets = const [
    ListOfAddsPage(),
    AddProductPage(),
    AddProductPage(),
    ConsideringPage(),
    AddProductPage(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      appBar: _appBar(),
      body: widgets[context.watch<BodyProvider>().currentIndex],
      bottomNavigationBar: _bottomNavBar(context),
    );
  }

  Container _bottomNavBar(BuildContext context) {
    return Container(
      height: gH(77.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color.fromRGBO(224, 224, 224, 1),
            offset: Offset(0.0, -1.1),
            blurRadius: 2.0,
          ),
        ],
        color: whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            gW(25.0),
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: gW(22.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _columer(context, 0,
              image: "assets/images/home (5) 1.png", text: mainOne),
          _columer(context, 1,
              image: "assets/images/heart (7).png", text: loved),
          _columer(context, 2, image: "assets/images/plus (2).png", text: add),
          _columer(
            context,
            3,
            image: "assets/images/menu (1).png",
            text: categories,
          ),
          _columer(
            context,
            4,
            image: "assets/images/user (6).png",
            text: profile,
          ),
        ],
      ),
    );
  }

  _columer(BuildContext context, int __,
      {required String image, required String text}) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0.0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {
        switch (__) {
          case 0: Provider.of<BodyProvider>(context, listen: false)
                .switchCurrentIndex(__);
            
            break;
             case 2:
            Provider.of<BodyProvider>(context, listen: false)
                .switchCurrentIndex(__);

            break;
          default:
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: gH(3.0),
            width: gW(44.0),
            decoration: BoxDecoration(
              color: context.watch<BodyProvider>().currentIndex == __
                  ? greenColor
                  : Colors.transparent,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  gH(3.0),
                ),
              ),
            ),
          ),
          Image.asset(
            image,
            height: gH(30.0),
            color: context.watch<BodyProvider>().currentIndex == __
                ? greenColor
                : c757373,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: gW(10.0),
              color: context.watch<BodyProvider>().currentIndex == __
                  ? greenColor
                  : c757373,
            ),
          ),
          const SizedBox()
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      toolbarHeight: gH(61.0),
      backgroundColor: whiteColor,
      elevation: 0,
      title: Image(
        height: gH(37.0),
        width: gW(118.0),
        image: const AssetImage(
          "assets/images/GulBozor-Logo.png",
        ),
        fit: BoxFit.contain,
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              gH(20.0),
            ),
          ),
          margin: EdgeInsets.only(
            top: gH(10.0),
            bottom: gH(10.0),
            right: gW(7.0),
          ),
          height: gH(40.0),
          width: gW(268.0),
          child: TextField(
            decoration: InputDecoration(
              alignLabelWithHint: true,
              isDense: true,
              constraints: BoxConstraints.tight(
                Size(
                  gW(268.0),
                  gH(40.0),
                ),
              ),
              hintText: 'qidirish',
              hintStyle: TextStyle(color: Colors.grey, fontSize: gW(18.0)),
              suffixIcon: const Icon(
                Icons.search_outlined,
                size: 25.0,
                color: Colors.grey,
              ),
              fillColor: bgColor,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  gH(20.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
