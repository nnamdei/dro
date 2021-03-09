import 'package:dro_health/constants/dimens.dart';
import 'package:dro_health/constants/strings.dart';
import 'package:dro_health/data/models/Product.dart';
import 'package:dro_health/ui/checkout.dart';
import 'package:dro_health/ui/product_detail.dart';
import 'package:dro_health/ui/widgets/product_card.dart';
import 'package:dro_health/utils/device_utils.dart';
import 'package:dro_health/utils/responsive_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:dro_health/constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//TODO add search filtering and total number of items dynamically in appbar title

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSearching = false;
  TextEditingController _textController = TextEditingController();
  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.arrowLeft,
              size: 16,
              color: Colors.black,
            ),
            onPressed: null),
        title: RichText(
            text: TextSpan(children: [
          TextSpan(text: '125', style: TextStyle(color: Colors.black)),
          TextSpan(text: ' items', style: TextStyle(color: Colors.black)),
          TextSpan(text: ' (s)', style: TextStyle(color: Colors.black))
        ])),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ResponsiveSafeArea(builder: (context, size) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 20,
                    child: Icon(
                      FontAwesomeIcons.sortNumericUpAlt,
                      size: 16,
                      color: Colors.black,
                    ), //TODO Include sort-alt icon
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.08),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 20,
                    child: Icon(
                      FontAwesomeIcons.filter,
                      size: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.08),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        this.isSearching = true;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 20,
                      child: Icon(
                        FontAwesomeIcons.search,
                        size: 16,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              !isSearching
                  ? SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    )
                  : Container(
                      margin: EdgeInsets.fromLTRB(16, 10, 16, 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: Colors.black, width: 0.5)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(
                                FontAwesomeIcons.search,
                                color: Colors.black,
                                size: 16,
                              ),
                            ),
                            suffixIcon: isSearching
                                ? GestureDetector(
                                    onTap: () {
                                      // Navigator.pop(context);
                                      setState(() {
                                        this.isSearching = false;
                                      });
                                    },
                                    child: Icon(
                                      FontAwesomeIcons.times,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  )
                                : Container()),
                        onChanged: (text) {
                          text = text.toLowerCase();
                          setState(() {});
                        },
                      ),
                    ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                  height: DeviceUtils.getScaledHeight(context, scale: 1),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: Dimens.defaultPadding,
                          crossAxisSpacing: Dimens.defaultPadding,
                          childAspectRatio: 0.75),
                      itemBuilder: (context, index) => ProductCard(
                            product: products[index],
                            press: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                          product: products[index],
                                        ))),
                          )))
            ],
          ),
        );
      }),
      bottomNavigationBar: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.droPurple,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.01),
            ),
            Center(
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                ),
                Icon(
                  FontAwesomeIcons.shoppingBag,
                  color: Colors.white,
                ),
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                ),
                Text(Strings.bag),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Checkout()));
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Text('3'),
                  ),
                ),
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
