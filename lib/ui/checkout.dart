import 'package:dro_health/constants/colors.dart';
import 'package:dro_health/constants/strings.dart';
import 'package:dro_health/utils/device_utils.dart';
import 'package:dro_health/utils/responsive_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.droPurple,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.droPurple,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.shoppingBag,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: DeviceUtils.getScaledWidth(context, scale: 0.01),
              ),
              Text(
                Strings.bag,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 16,
            child: Text(
              '4',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            width: DeviceUtils.getScaledWidth(context, scale: 0.04),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'N',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: '500',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500))
                ])),
              ],
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
            ),
            Center(
              child: Container(
                width: 250,
                child: RaisedButton(
                  color: Colors.white,
                  elevation: 0.0,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(Strings.checkout),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ResponsiveSafeArea(builder: (context, size) {
        return ListView(children: [
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
          ),
          Center(
            child: Container(
              width: 300,
              height: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: Center(
                child: Text(
                  Strings.searchText,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
          ),
          ProductTile()
        ]);
      }),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: DeviceUtils.getScaledWidth(context, scale: 0.06),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            width: DeviceUtils.getScaledWidth(context, scale: 0.03),
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '1', style: TextStyle(color: Colors.white, fontSize: 12)),
            TextSpan(
                text: 'X', style: TextStyle(color: Colors.white, fontSize: 12))
          ])),
          SizedBox(
            width: DeviceUtils.getScaledWidth(context, scale: 0.03),
          ),
          Column(
            children: [
              Text('data', style: TextStyle(color: Colors.white)),
              Text('data', style: TextStyle(color: Colors.white)),
            ],
          ),
          Spacer(),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'N',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            TextSpan(
                text: ' 500',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
          ])),
          SizedBox(
            width: DeviceUtils.getScaledWidth(context, scale: 0.06),
          ),
        ],
      ),
    );
  }
}
