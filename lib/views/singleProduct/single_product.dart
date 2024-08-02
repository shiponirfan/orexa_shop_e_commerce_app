import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orexa_shop/widgets/custom_appbar.dart';
import 'package:orexa_shop/widgets/custom_button.dart';

import '../../utils/app_colors.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Map product = Get.arguments;
    print(product);
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
                color: AppColors.backgroundColor,
                child: Image.asset(product['image'], fit: BoxFit.contain),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(product['title']),
                Image.asset('assets/images/rating.png'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$${product['discount_price']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '\$${product['original_price']}',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black.withOpacity(.5),
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    Text(
                      'Available in stock',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'About',
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  product['description'],
                  style: TextStyle(color: Colors.black.withOpacity(.75)),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 44,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: product['variant'].length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      int variant = product['variant'][index];
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 44,
                        decoration: BoxDecoration(
                          // color: AppColors.cartBackgroundColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0xFFD8D3D3).withOpacity(0.5),
                                width: 2)),
                        child: Center(child: Text(variant.toString())),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(child: CustomButton(title: 'Add to cart')),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
