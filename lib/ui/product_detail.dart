import 'package:dro_health/constants/colors.dart';
import 'package:dro_health/constants/strings.dart';
import 'package:dro_health/data/models/Product.dart';
import 'package:dro_health/ui/checkout.dart';
import 'package:dro_health/utils/device_utils.dart';
import 'package:dro_health/utils/responsive_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.arrowLeft,
              size: 16,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Checkout()));
            },
            child: Container(
              width: 50,
              height: 40,
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  color: AppColors.droPurple,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.shoppingBag,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: GestureDetector(
          onTap: () {
            _addItemDialog(context);
          },
          child: Container(
            height: 48,
            margin: EdgeInsets.only(right: 36, left: 36),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.droPurple),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.shoppingBag,
                  color: Colors.white,
                  size: 16,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  Strings.addToBag,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
      body: ResponsiveSafeArea(builder: (context, size) {
        return ListView(
          children: [
            Center(
                child: Hero(
                    tag: "${product.id}", child: Image.asset(product.image))),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.03),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(product.title),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(product.title),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.03),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.grey,
                      radius: 20,
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [Text(Strings.soldBy), Text(product.supplier)],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.03),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Container(
                height: 40,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[300])),
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.black,
                                size: 16,
                              ),
                              onPressed: null),
                          Text(
                            '1',
                            style: TextStyle(color: Colors.black),
                          ),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.black,
                                size: 16,
                              ),
                              onPressed: null)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                    ),
                    Text(
                      'Packs',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    Spacer(),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'N', style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: '${product.price}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ])),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(Strings.productDetails),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.03),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.capsules,
                    size: 20,
                    color: AppColors.droPurple,
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('PACK SIZE',style: TextStyle(color: Colors.grey,fontSize: 14),), Text('3 x 10')],
                  ),
                  Spacer(),
                  Icon(
                    FontAwesomeIcons.capsules,
                    size: 20,
                    color: AppColors.droPurple,
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('PRODUCT ID',style: TextStyle(color: Colors.grey,fontSize: 14),), Text(product.productID)],
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.03),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.capsules,
                    size: 20,
                    color: AppColors.droPurple,
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('CONSTITUENTS',style: TextStyle(color: Colors.grey,fontSize: 14),), Text(product.description)],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.03),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.capsules,
                    size: 20,
                    color: AppColors.droPurple,
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('DISPENSED IN',style: TextStyle(color: Colors.grey,fontSize: 14),), Text(product.qtyUnit)],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            Center(
                child: Text(
                    '1 Pack of Garlic oil contains 3 units of 10 tablets(s)'))
          ],
        );
      }),
    );
  }

  _addItemDialog(BuildContext context) {
    return showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          contentPadding: EdgeInsets.zero,
          content: Stack(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Positioned(
                  left: 100,
                  top: -20,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  )),
              new Text(
                "Success",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Color.fromRGBO(17, 17, 17, 1)),
              ),
              Text(
                "Success",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Color.fromRGBO(17, 17, 17, 1)),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                width: MediaQuery.of(context).size.width,
                height: 48,
                child: RaisedButton(
                  elevation: 0,
                  // color: PURPLE_HUE,
                  // onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Text(
                    'View Bag',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .5,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                width: MediaQuery.of(context).size.width,
                height: 48,
                child: RaisedButton(
                  elevation: 0,
                  // color: PURPLE_HUE,
                  // onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Text(
                    'Done',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        letterSpacing: .5,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class counterWidget extends StatefulWidget {
  @override
  _counterWidgetState createState() => _counterWidgetState();
}

class _counterWidgetState extends State<counterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
