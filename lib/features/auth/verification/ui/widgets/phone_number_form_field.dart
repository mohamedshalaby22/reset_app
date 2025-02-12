import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class PhoneNumberFormField extends StatelessWidget {
  const PhoneNumberFormField({
    super.key,
    required this.phoneController,
    this.isScrollPadding = false,
  });
  final TextEditingController phoneController;
  final bool isScrollPadding;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[50],
          border: Border.all(
            width: 0.6,
            color: Colors.grey,
          ),
        ),
        child: Row(
          children: [
            _buildCountryCodePrefix(),
            horizontalSpace(5),
            Expanded(
              child: SizedBox(
                height: 35,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 2),
                  child: TextFormField(
                    scrollPadding: EdgeInsets.only(
                        bottom: isScrollPadding
                            ? MediaQuery.of(context).viewInsets.bottom
                            : 0),
                    controller: phoneController,
                    style: TextStyles.font14BlackRegular,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp('^0+')),
                      FilteringTextInputFormatter.deny(RegExp('^20+')),
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(11),
                    ],
                    cursorColor: ColorsManager.mainBlue,
                    cursorHeight: 18,
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(height: 0),
                      border: InputBorder.none,
                      hintStyle: TextStyles.font14GreyMedium,
                      hintText: '1023654321',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildCountryCodePrefix() {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.svgsEgyptFlag,
          width: 20,
        ),
        horizontalSpace(6),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            '+20',
            style: TextStyles.font14BlackRegular,
          ),
        ),
        horizontalSpace(8),
        Container(
          width: 1,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.grey[400],
          ),
        )
      ],
    );
  }
}
