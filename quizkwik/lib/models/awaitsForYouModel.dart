import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';

class AwaitForYouModel extends StatelessWidget {
  const AwaitForYouModel({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.78,
          crossAxisSpacing: 16,
          mainAxisSpacing: 14),
      itemBuilder: (BuildContext context, int index) {
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title[index],
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.colorBlackHighEmp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 11,
                          color: AppColors.colorSecondary,
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          rating[index],
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.colorBlackLowEmp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price[index],
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/diamond.png",
                              height: 16.h,
                              width: 16.w,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              diamond[index],
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.colorBlackHighEmp,
                                  fontWeight: FontWeight.w600),
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
