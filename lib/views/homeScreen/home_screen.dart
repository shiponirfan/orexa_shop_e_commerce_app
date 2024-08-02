import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orexa_shop/utils/app_colors.dart';
import 'package:orexa_shop/views/singleProduct/single_product.dart';
import 'package:orexa_shop/widgets/custom_appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:orexa_shop/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> sliderImages = [
      {
        'title': '20% OFF DURING THE WEEKEND',
        'image': 'assets/images/shopping_bags.png',
      },
      {
        'title': '30% OFF DURING THE WEEKEND',
        'image': 'assets/images/shopping_bags.png',
      },
      {
        'title': '60% OFF DURING THE WEEKEND',
        'image': 'assets/images/shopping_bags.png',
      },
    ];
    List<Map<String, dynamic>> categoriesIcons = [
      {
        'title': 'Watch',
        'image': 'assets/images/categories_icons/watch.png',
      },
      {
        'title': 'T-Shirt',
        'image': 'assets/images/categories_icons/tshirt.png',
      },
      {
        'title': 'Bag',
        'image': 'assets/images/categories_icons/bag.png',
      },
      {
        'title': 'Shoes',
        'image': 'assets/images/categories_icons/shoes.png',
      },
      {
        'title': 'Sunglasses',
        'image': 'assets/images/categories_icons/sunglasses.png',
      },
    ];
    List<Map<String, dynamic>> products = [
      {
        'title': 'Apple Watch Series 6',
        'image': 'assets/images/products/apple_watch.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'watch',
      },
      {
        'title': 'Siberia 800',
        'image': 'assets/images/products/headphone.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'watch',
      },
      {
        'title': 'Lycra Men’s shirt',
        'image': 'assets/images/products/shirt.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': ['S', 'M', 'XL', 'XXL'],
        'category': 'tshirt',
      },
      {
        'title': 'Nike/L v Airforce 1',
        'image': 'assets/images/products/shoes.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'shoes',
      },
      {
        'title': 'Apple Watch Series 6',
        'image': 'assets/images/products/apple_watch.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'watch',
      },
      {
        'title': 'Siberia 800',
        'image': 'assets/images/products/headphone.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'watch',
      },
      {
        'title': 'Lycra Men’s shirt',
        'image': 'assets/images/products/shirt.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': ['S', 'M', 'XL', 'XXL'],
        'category': 'tshirt',
      },
      {
        'title': 'Nike/L v Airforce 1',
        'image': 'assets/images/products/shoes.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'shoes',
      },
      {
        'title': 'Apple Watch Series 6',
        'image': 'assets/images/products/apple_watch.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'watch',
      },
      {
        'title': 'Siberia 800',
        'image': 'assets/images/products/headphone.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'watch',
      },
      {
        'title': 'Lycra Men’s shirt',
        'image': 'assets/images/products/shirt.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': ['S', 'M', 'XL', 'XXL'],
        'category': 'tshirt',
      },
      {
        'title': 'Nike/L v Airforce 1',
        'image': 'assets/images/products/shoes.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'shoes',
      },
      {
        'title': 'Apple Watch Series 6',
        'image': 'assets/images/products/apple_watch.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'watch',
      },
      {
        'title': 'Siberia 800',
        'image': 'assets/images/products/headphone.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'watch',
      },
      {
        'title': 'Lycra Men’s shirt',
        'image': 'assets/images/products/shirt.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': ['S', 'M', 'XL', 'XXL'],
        'category': 'tshirt',
      },
      {
        'title': 'Nike/L v Airforce 1',
        'image': 'assets/images/products/shoes.png',
        'description':
            'The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
        'original_price': 55000,
        'discount_price': 45000,
        'variant': [35, 36, 37, 38, 39, 40],
        'category': 'shoes',
      },
    ];
    return Scaffold(
      appBar: const CustomAppbar(
        menu: true,
        search: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          selectedItemColor: AppColors.primaryColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Irfan 👋',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'Let’s start shopping!',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 12, color: Colors.black.withOpacity(.5)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 130.0,
                  autoPlay: true,
                  viewportFraction: 0.75,
                  initialPage: 0,
                  padEnds: false),
              items: sliderImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${i['title']}',
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 25)),
                                    child: const Text(
                                      'Get Now',
                                      style: TextStyle(
                                        color: Color(0xFFF17547),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Image.asset(i['image']),
                          ),
                        ]));
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Categories',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'See All',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.primaryColor,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesIcons.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Map singleCategory = categoriesIcons[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 80,
                    decoration: BoxDecoration(
                        color: AppColors.cartBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xFFD8D3D3).withOpacity(0.5),
                            width: 2)),
                    child: Image.asset(singleCategory['image']),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: .8),
                itemBuilder: (context, index) {
                  Map singleProduct = products[index];
                  return Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                      onTap: () => Get.to(const SingleProduct(),
                          arguments: singleProduct),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 10),
                                child: const Text(
                                  '50% OFF',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart_circle))
                            ],
                          ),
                          Center(
                              child: Image.asset(
                            singleProduct['image'],
                            width: 120,
                            height: 120,
                            fit: BoxFit.contain,
                          )),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            singleProduct['title'],
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$${singleProduct['discount_price']}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '\$${singleProduct['original_price']}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Colors.black.withOpacity(.5),
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
