import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';

class AwaitForYouModel extends StatelessWidget {
  const AwaitForYouModel({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics:
          const NeverScrollableScrollPhysics(), // prevent scrolling in GridView
      itemCount: 4,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items per row
          childAspectRatio: 0.78, // width to height ratio of each item
          crossAxisSpacing: 16, // spacing between items horizontally
          mainAxisSpacing: 14 // spacing between items vertically
          ),
      itemBuilder: (BuildContext context, int index) {
        // data for each item
        List<String> images = [
          'assets/images/watch.png',
          'assets/images/sneakers.png',
          'assets/images/jacket.png',
          'assets/images/polo.png',
        ];
        List<String> title = [
          'Tommy Watch for Men',
          'Man running shoe',
          'Redwolf sleeve Jacket',
          'Sleeve T-Shirt',
        ];
        List<String> rating = [
          '4.8 (452)',
          '4.8 (452)',
          '4.8 (452)',
          '4.8 (452)',
        ];
        List<String> price = [
          '\$19.99',
          '\$19.99',
          '\$19.99',
          '\$19.99',
        ];
        List<String> diamond = [
          '2800',
          '600',
          '2560',
          '2800',
        ];

        return Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.colorWhiteLowEmp),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Image.asset(images[index]),
              Padding(
                padding: const EdgeInsets.all(
                    8.0), // Adding 8.0 pixels of padding around the Column
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Aligning the children to the start (left) of the Column
                  children: [
                    Text(
                      title[
                          index], // Displaying the title of the item based on its index
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.colorBlackHighEmp,
                          fontWeight: FontWeight.w600), // Styling the title
                    ),
                    SizedBox(
                        height: 2
                            .h), // Adding a 2% height sized box between the title and rating
                    Row(
                      children: [
                        const Icon(
                          Icons.star, // Displaying a star icon
                          size: 11,
                          color:
                              AppColors.colorSecondary, // Styling the star icon
                        ),
                        SizedBox(
                            width: 2
                                .w), // Adding a 2% width sized box between the star icon and rating text
                        Text(
                          rating[
                              index], // Displaying the rating of the item based on its index
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.colorBlackLowEmp,
                              fontWeight:
                                  FontWeight.w400), // Styling the rating text
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 8
                            .h), // Adding an 8% height sized box between the rating and price
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Spacing the children equally on both sides
                      children: [
                        Text(
                          price[
                              index], // Displaying the price of the item based on its index
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight:
                                  FontWeight.w600), // Styling the price text
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/diamond.png", // Displaying an image of a diamond
                              height: 16.h,
                              width: 16.w,
                            ),
                            SizedBox(
                                width: 4
                                    .w), // Adding a 4% width sized box between the diamond icon and diamond count text
                            Text(
                              diamond[
                                  index], // Displaying the diamond count of the item based on its index
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.colorBlackHighEmp,
                                  fontWeight: FontWeight
                                      .w600), // Styling the diamond count text
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
