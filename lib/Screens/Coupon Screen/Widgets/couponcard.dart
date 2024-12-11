
import 'package:couponcode_clipper_shape/Screens/Coupon%20Screen/Widgets/couponclipper.dart';
import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
 

  const CouponCard({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: const Border(
          left: BorderSide.none, // No border on the left side
          top: BorderSide(color: Colors.grey, width: 1),
          right: BorderSide(color:Colors.grey, width: 1),
          bottom: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipPath(
                clipper: CuponClipper(),
                child: Container(
                  width: 75,
                  height: 74,
                  // padding: EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFF0D2),

                    // color: Colors.redAccent,
                    // borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Center(
                        child: Image.asset(
                      'assets/images/off.png',
                      // height: 40,
                    
                      // width: 40,
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "30% OFF",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                     ),
                  ),
                  Text(
                    "APPLICABLE OVER & ABOVE COUPONS",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                       ),
                  ),
                ],
              ),
            ],
          ),
         
        ],
      ),
    );
  }
}
