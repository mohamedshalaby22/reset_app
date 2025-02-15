import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:reset_app/core/constants/app_images.dart';
import 'package:reset_app/core/helpers/spacing.dart';
import 'package:reset_app/core/theming/styles.dart';
import 'package:reset_app/core/widgets/app_text_form_field.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 250.0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 0.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          Assets.imagesHomeAppbar,
          fit: BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          height: 25.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      toolbarHeight: 205.0,
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              HugeIcon(
                icon: HugeIcons.strokeRoundedNotification02,
                color: Colors.white,
              ),
              PositionedDirectional(
                start: 2,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.red,
                ),
              )
            ],
          ),
          verticalSpace(15),
          Row(
            children: [
              SvgPicture.asset(Assets.svgsCircleLogo),
              horizontalSpace(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اهلا بك',
                    style: TextStyles.font16WhiteBold,
                  ),
                  verticalSpace(10),
                  Text(
                    'عاوز تروح فين؟',
                    style: TextStyles.font16WhiteBold,
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(20),
          GestureDetector(
            onTap: () {},
            child: AbsorbPointer(
              child: AppTextFormField(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: HugeIcon(
                      icon: HugeIcons.strokeRoundedSearch01,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'ابحث في اكثر من 200 مدينة و محافظة ...',
                  validator: (value) {}),
            ),
          ),
          verticalSpace(20),
          Text(
            'الساحل الشمالي- مرسى مطروح',
            style: TextStyles.font16WhiteBold,
          ),
        ],
      ),
    );
  }
}
