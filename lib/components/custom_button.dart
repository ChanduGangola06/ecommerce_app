// import 'package:ecommerce_app/config/app_color.dart';
// import 'package:ecommerce_app/config/app_text_style.dart';
// import 'package:ecommerce_app/config/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomButton extends StatelessWidget {
//   final String buttonText;
//   final Color? buttonColor;
//   final Color buttonTextColor;
//   final void Function()? onPressed;

//   const CustomButton({
//     super.key,
//     required this.buttonText,
//     required this.onPressed,
//     this.buttonColor,
//     this.buttonTextColor = EcommerceAppColor.white,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ButtonStyle(
//         elevation: WidgetStateProperty.all(0),
//         backgroundColor: WidgetStateProperty.all(
//             buttonColor ?? colors(context).primaryColor),
//         minimumSize: WidgetStateProperty.all(
//           Size(double.infinity, 50.h),
//         ),
//         shape: WidgetStateProperty.all(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50.r),
//           ),
//         ),
//       ),
//       onPressed: onPressed,
//       child: Text(
//         buttonText,
//         style: AppTextStyle(context).buttonText.copyWith(
//               color: buttonTextColor,
//             ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }