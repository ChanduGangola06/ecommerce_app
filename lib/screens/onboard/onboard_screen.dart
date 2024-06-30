import 'package:ecommerce_app/components/app_logo.dart';
import 'package:ecommerce_app/config/app_text_style.dart';
import 'package:ecommerce_app/controllers/misc_controller.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OnboardScreen extends ConsumerStatefulWidget {
  const OnboardScreen({super.key});

  @override
  ConsumerState<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends ConsumerState<OnboardScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      int? newPage = pageController.page?.round();
      if (newPage != ref.read(currentPageController)) {
        setState(() {
          ref.read(currentPageController.notifier).state = newPage!;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w)
            .copyWith(top: 40.h, bottom: 20.h),
        child: Column(
          children: [
            const AppLogo(
              isAnimation: true,
            ),
            Gap(30.h),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: onboardingItems.length,
                onPageChanged: (page) {
                  if (page == 2 && !ref.read(isOnboardingLastPage)) {
                    ref.read(isOnboardingLastPage.notifier).state = true;
                  } else if (ref.read(isOnboardingLastPage)) {
                    ref.read(isOnboardingLastPage.notifier).state = false;
                  }
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(160),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          onboardingItems[index]['image'],
                          height: MediaQuery.of(context).size.height / 2.2,
                          width: 280.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(30.h),
                      Text(
                        onboardingItems[index]['title'],
                        style: AppTextStyle(context).title.copyWith(
                            fontSize: 28.sp, fontWeight: FontWeight.bold),
                      ),
                      Gap(20.h),
                      Text(
                        onboardingItems[index]['description'],
                        style: AppTextStyle(context)
                            .bodyTextSmall
                            .copyWith(fontSize: 16.sp),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> onboardingItems = [
    {
      'image': Assets.png.onboardingOne.path,
      'title': 'Effortless Shopping',
      'description':
          'Discover the convenience of grocery Shopping at Your Fingertips'
    },
    {
      'image': Assets.png.onboardingTwo.path,
      'title': 'Effortless Shopping 1',
      'description':
          'Discover the convenience of grocery Shopping at Your Fingertips'
    },
    {
      'image': Assets.png.onboardingThree.path,
      'title': 'Effortless Shopping 2',
      'description':
          'Discover the convenience of grocery Shopping at Your Fingertips'
    },
  ];
}
